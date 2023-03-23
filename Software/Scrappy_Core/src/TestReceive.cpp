#include <boost/interprocess/shared_memory_object.hpp>
#include <boost/interprocess/mapped_region.hpp>
#include <iostream>

using namespace std;

int main()
{
    // Open the shared memory object
    boost::interprocess::shared_memory_object shm(boost::interprocess::open_only, "my_shared_memory", boost::interprocess::read_write);

    // Map the shared memory object to a mapped region
    boost::interprocess::mapped_region region(shm, boost::interprocess::read_only);

    // Get a pointer to the mapped region
    int* fixed_point_data = static_cast<int*>(region.get_address());

    // Print the fixed point data
    for (int i = 0; i < 10; i++) {
        cout << "Value " << i << ": " << fixed_point_data[i] << endl;
    }

    // When you're done with the shared memory, unmap the region
    return 0;
}