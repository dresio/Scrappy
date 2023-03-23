#include <opencv2/opencv.hpp>
#include <opencv2/videoio.hpp>
#include <iostream>

using namespace cv;
using namespace std;

std::string gstreamer_pipeline (int capture_width, int capture_height, int display_width, int display_height, int framerate, int flip_method) {
    return "nvarguscamerasrc ! video/x-raw(memory:NVMM), width=(int)" + std::to_string(capture_width) + ", height=(int)" +
           std::to_string(capture_height) + ", framerate=(fraction)" + std::to_string(framerate) +
           "/1 ! nvvidconv flip-method=" + std::to_string(flip_method) + " ! video/x-raw, width=(int)" + std::to_string(display_width) + ", height=(int)" +
           std::to_string(display_height) + ", format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink";
}


int main()
{
    int capture_width = 1280 ;
    int capture_height = 720 ;
    int display_width = 1280 ;
    int display_height = 720 ;
    int framerate = 30 ;
    int flip_method = 0 ;

    // Open the video stream from the Raspberry Pi camera
    std::string pipeline = gstreamer_pipeline(capture_width,
    	capture_height,
    	display_width,
    	display_height,
    	framerate,
    	flip_method);

    VideoCapture cap(pipeline, CAP_GSTREAMER);

    // Check if the video stream is open
    if (!cap.isOpened()) {
        cerr << "ERROR: Failed to open video stream" << endl;
        return -1;
    }

    // Create a window to display the video stream
    namedWindow("Video Stream", WINDOW_AUTOSIZE);

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
        // imshow("Video Stream", frame);
    }

    // Release the video stream and close the window
    cap.release();
    destroyAllWindows();

    return 0;
}