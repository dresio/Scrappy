#ifndef JSONMSGGENERATOR_H
#define JSONMSGGENERATOR_H

#include <iostream>
#include <fstream>
#include <boost/filesystem.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

namespace fs = boost::filesystem;
using namespace std;

/**
 * @brief Generates a C++ class definition from a JSON file
 * 
 */
class JsonMsgGenerator 
{
    public: 

        /**
        * @brief Construct a new Json To Class Generator object
        * 
        * @param class_name name for the class object (filename without extension)
        * @param filename name for the file containing the JSON data
        * @param header_filename name for the header file to be generated
        */
        JsonMsgGenerator(const string& class_name, const string& filename, const string& header_filename);

        /**
        * @brief Generates the class definition from the JSON data
        * 
        */
        void generate();

        /**
        * @brief Destroy the Json To Class Generator object
        * 
        */
        ~JsonMsgGenerator();

    private:
        string class_name;
        string filename;
        string header_filename;
        ofstream outfile;
};



#endif // JSONMSGGENERATOR_H