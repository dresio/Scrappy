#include "DataTransport.h"

template <typename MessageType>
DataTransport<MessageType>::DataTransport(const string& topicName, TransportType direction)
{
    boost::interprocess::mode_t permissions;
    // Create or open the shared memory object
    if(direction == TransportType::PUB)
    {
        permissions = boost::interprocess::read_write;
    } 
    else
    {
        permissions = boost::interprocess::read_only;
    }

    shm = boost::interprocess::shared_memory_object(boost::interprocess::open_or_create, topicName.c_str(), permissions);

    // Set the size of the shared memory object
    shm.truncate(sizeof(MessageType));

    // Map the shared memory object to a mapped region
    region = boost::interprocess::mapped_region(shm, permissions);
}

template <typename MessageType>
DataTransport<MessageType>::~DataTransport()
{
    // When you're done with the shared memory, unmap the region and release the object
    boost::interprocess::shared_memory_object::remove(shm.get_name());
}

template <typename MessageType>
MessageType DataTransport<MessageType>::get_data()
{
    // Get a pointer to the mapped region
    MessageType* message = static_cast<MessageType*>(region.get_address());

    return *message;
}

template <typename MessageType>
void DataTransport<MessageType>::set_data(MessageType message)
{
    // Get a pointer to the mapped region
    MessageType* messagePtr = static_cast<MessageType*>(region.get_address());

    *messagePtr = message;
}


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
