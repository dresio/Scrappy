#include <opencv2/opencv.hpp>
#include <opencv2/videoio.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int main()
{
    // Open the video stream from the Raspberry Pi camera
    string pipeline = "udpsrc port=5000 ! application/x-rtp, encoding-name=H264, payload=96 ! rtph264depay ! h264parse ! omxh264dec ! nvvidconv ! video/x-raw, format=BGRx ! videoconvert ! video/x-raw, format=BGR ! appsink";
    VideoCapture cap(pipeline, CAP_GSTREAMER);

    // Check if the video stream is open
    if (!cap.isOpened()) {
        cerr << "ERROR: Failed to open video stream" << endl;
        return -1;
    }

    // Create a window to display the video stream
    namedWindow("Video Stream", WINDOW_NORMAL);

    // Loop over the video frames
    Mat frame;
    while (waitKey(1) != 'q') {
        // Capture a frame from the video stream
        cap >> frame;

        // Check if the frame is empty
        if (frame.empty()) {
            cerr << "ERROR: Failed to capture frame from video stream" << endl;
            break;
        }

        // Display the frame
        imshow("Video Stream", frame);
    }

    // Release the video stream and close the window
    cap.release();
    destroyAllWindows();

    return 0;
}