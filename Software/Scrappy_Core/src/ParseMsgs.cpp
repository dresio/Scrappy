#include <iostream>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

int main() {
    // Read the JSON file into a property tree
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json("../msgs/point.msg", pt);

    // Access the list of parameters
    for (auto& param : pt.get_child("point")) {
        std::string name = param.second.get<std::string>("name");
        std::string type = param.second.get<std::string>("type");
        std::cout << "name: " << name << ", type: " << type << std::endl;
    }

    return 0;
}