#include "DataTransport.h"
#include "point.h"

#include <chrono>
#include <thread>
#include <iostream>

int main()
{
    DataTransport<int> test("test", DataTransport<int>::TransportType::PUB);

    test.set_data(5);

    // Sleep for 2 seconds
    std::this_thread::sleep_for(std::chrono::milliseconds(2000));


    return 0;
}