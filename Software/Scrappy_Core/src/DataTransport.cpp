#include <boost/interprocess/shared_memory_object.hpp>
#include <boost/interprocess/mapped_region.hpp>
#include <chrono>
#include <thread>
#include <iostream>

using namespace std;

int main()
{
    // Create or open the shared memory object
    boost::interprocess::shared_memory_object shm(boost::interprocess::open_or_create, "my_shared_memory", boost::interprocess::read_write);

    // Set the size of the shared memory object
    shm.truncate(sizeof(int) * 10);

    // Map the shared memory object to a mapped region
    boost::interprocess::mapped_region region(shm, boost::interprocess::read_write);

    // Get a pointer to the mapped region
    int* fixed_point_data = static_cast<int*>(region.get_address());

    // Use the fixed point data as normal
    fixed_point_data[0] = 42;
    int value = fixed_point_data[0];

    // Give enough time to start second program
    this_thread::sleep_for(chrono::seconds(10));

    // When you're done with the shared memory, unmap the region and release the object
    boost::interprocess::shared_memory_object::remove("my_shared_memory");

    // Display to know if the program has cleared mem
    cout << "done" << endl;
    return 0;
}
