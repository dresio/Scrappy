#ifndef DATA_TRANSPORT_H
#define DATA_TRANSPORT_H

#include <boost/interprocess/shared_memory_object.hpp>
#include <boost/interprocess/mapped_region.hpp>
#include <iostream>

using namespace std;

/**
 * @brief Provides a simple interface for sharing data between processes
 * 
 * @tparam MessageType 
 */
template <typename MessageType>
class DataTransport
{
    public:

        /**
         * @brief Enum for the direction of data flow, and other future types
         * 
         */
        enum class TransportType
        {
            PUB,
            SUB
        };

        /**
         * @brief Construct a new Data Transport object
         * 
         * @param name topic name
         * @param direction direction of data flow
         */
        DataTransport(const string& topicName, TransportType direction)
        {
            cout << "Creating DataTransport for topic: " << topicName << endl;

            boost::interprocess::mode_t permissions;
            // Create or open the shared memory object
            if(direction == TransportType::PUB)
            {
                permissions = boost::interprocess::read_write;
            } 
            else if(direction == TransportType::SUB)
            {
                permissions = boost::interprocess::read_only;
            }

            cout << "creating shared memory..." << endl;
            shm = boost::interprocess::shared_memory_object(boost::interprocess::open_or_create, topicName.c_str(), permissions);

            // std::size_t num_references = shm.get_num_reference_count();
            // cout << "num_references: " << num_references << endl;

            if(direction == TransportType::PUB)
            {
                // Set the size of the shared memory object
                cout << "shrinking shared memory..." << endl;
                shm.truncate(sizeof(MessageType));
            }

            // Map the shared memory object to a mapped region
            cout << "mapping shared memory..." << endl;
            region = boost::interprocess::mapped_region(shm, permissions);

            // Verify that the shared memory object has been mapped successfully
            if (!region.get_address()) {
                throw runtime_error("Failed to map shared memory region");
            }
        }

        /**
         * @brief Destroy the Data Transport object
         * TODO: Free up data IF this is the last instance of this message
         */
        ~DataTransport()
        {
            // When you're done with the shared memory, unmap the region and release the object
            boost::interprocess::shared_memory_object::remove(shm.get_name());
        }

        /**
         * @brief Get the data from shared memory
         * 
         * @return Data of  
         */
        MessageType get_data()
        {
            // Get a pointer to the mapped region
            MessageType* message = static_cast<MessageType*>(region.get_address());

            return *message;
        }

        /**
         * @brief Push the data to shared memory
         * 
         * @param message Message data to be used
         */
        void set_data(MessageType message)
        {
            // Get a pointer to the mapped region
            MessageType* messagePtr = static_cast<MessageType*>(region.get_address());

            *messagePtr = message;  
        }

    private:
        boost::interprocess::shared_memory_object shm;
        boost::interprocess::mapped_region region;
        TransportType _direction;
};

#endif // DATA_TRANSPORT_H