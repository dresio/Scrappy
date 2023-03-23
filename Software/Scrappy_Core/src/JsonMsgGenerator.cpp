#include "JsonMsgGenerator.h"


JsonMsgGenerator::JsonMsgGenerator(const string& class_name, const string& filename, const string& header_filename) :
    class_name(class_name),
    filename(filename),
    header_filename(header_filename),
    outfile(header_filename)
{
    outfile << "#ifndef " << class_name << "_H\n";
    outfile << "#define " << class_name << "_H\n\n";
    outfile << "#include <string>\n\n";
    outfile << "class " << class_name << " {\n";
    outfile << "public:\n";
}

void JsonMsgGenerator::generate() 
{
    // Read the JSON file into a property tree
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(filename, pt);

    // Generate class members based on the JSON fields
    for (auto& field : pt.get_child(class_name)) {
        string name = field.second.get<string>("name");
        string type = field.second.get<string>("type");
        outfile << "\t" << type << " " << name << ";\n";
    }
    outfile << "};\n";
}

JsonMsgGenerator::~JsonMsgGenerator() 
{
    outfile << "#endif // " << class_name << "_H\n";
}


int main() {

    string directory_path = "../msgs";
    for (const auto& entry : fs::directory_iterator(directory_path)) {
        if (fs::is_regular_file(entry.path())) {
            string filePath = entry.path().string();
            size_t lastSlashIndex = filePath.find_last_of('/') + 1;
            size_t lastDotIndex = filePath.find_last_of('.');
            string fileName = filePath.substr(lastSlashIndex, lastDotIndex - lastSlashIndex);
            string fileExtension = filePath.substr(lastDotIndex);

            if(fileExtension == ".msg")
            {
                cout << "Generating header for " << fileName << fileExtension << endl; 
                string outputPath = "../msg_headers/";
                string header_filename = outputPath + fileName + ".h";

                // Generate the class definition from the JSON data
                JsonMsgGenerator generator(fileName, filePath, header_filename);
                generator.generate();

            }
        }
    }

    return 0;
}