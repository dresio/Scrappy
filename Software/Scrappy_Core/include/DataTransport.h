#ifndef DATA_TRANSPORT_H
#define DATA_TRANSPORT_H

#include <boost/interprocess/shared_memory_object.hpp>
#include <boost/interprocess/mapped_region.hpp>
#include <chrono>
#include <thread>
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
        DataTransport(const string& topicName, TransportType direction);

        /**
         * @brief Destroy the Data Transport object
         * TODO: Free up data IF this is the last instance of this message
         */
        ~DataTransport();

        /**
         * @brief Get the data from shared memory
         * 
         * @return MessageType 
         */
        MessageType get_data();

        /**
         * @brief Push the data to shared memory
         * 
         * @param message Message data to be used
         */
        void set_data(MessageType message);

    private:
        boost::interprocess::shared_memory_object shm;
        boost::interprocess::mapped_region region;
        TransportType _direction;
};

#endif // DATA_TRANSPORT_H