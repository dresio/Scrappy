# About
This folder stores all of the software to run the robot. The goal of this is to work as a zero copy node framework that allows nodes to comunicate through pointers in memory. This is done to take full advantage of the powerful gpu units in the jetson product line, without overwheleming the cpu.  

# Roadmap
## Scrappy_Core
This will contain data communcation general code. This allows it to work across threads, and it will have a known part of data that the core listens to to map out data, create new topics, and assign general information.   
Currently, it is supporting data transfer in CPU, however work will be done to allow for gpu data transfer also to allow for more timely vision processing.  
## Vision_Processing
This will contain the code to open and publish camera data, and will be working on a april tag module along with slam, and facial recognition modules
## Navigation
This has not been started, but will hold code to fuse input data such as IMU, SLAM, and dead reckoning data and output maps and odometry  
## Hardware
This module will contain hardware interfaces to sensors and acuators publish data. Camera interface will most likely move here eventually
## Controls
This module will contain customizable PID controllers, and maybe more advanced sliding mode and other controllers
## Allocation
This module will define how acuators are placed around the vehicle to properly drive the based on control input

# Install Instructions:
## Misc Dependencies
```
sudo apt-get install libboost-all-dev
```

## OpenCV
```
#Download prerequisites:
sudo apt-get install libgtk2.0-dev libgtk-3-dev pkg-config
sudo apt-get install 

#Downloading files  
cd ~  
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.5.1.zip  
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.5.1.zip  
unzip opencv.zip  
unzip opencv_contrib.zip  

#Cleaning up files  
mv opencv-4.5.1 opencv  
mv opencv_contrib-4.5.1 opencv_contrib  
rm opencv.zip  
rm opencv_contrib.zip  

#installing files  
cd ~/opencv  
mkdir build  
cd build  
cmake -D CMAKE_BUILD_TYPE=RELEAS \
        -D CMAKE_INSTALL_PREFIX=/usr \
        -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
        -D EIGEN_INCLUDE_PATH=/usr/include/eigen3 \
        -D WITH_OPENCL=OFF \
        -D WITH_CUDA=ON \
        -D CUDA_ARCH_BIN=5.3 \
        -D CUDA_ARCH_PTX="" \
        -D WITH_CUDNN=ON \
        -D WITH_CUBLAS=ON \
        -D ENABLE_FAST_MATH=ON \
        -D CUDA_FAST_MATH=ON \
        -D OPENCV_DNN_CUDA=ON \
        -D ENABLE_NEON=ON \
        -D WITH_QT=OFF \
        -D WITH_OPENMP=ON \
        -D WITH_OPENGL=ON \
        -D BUILD_TIFF=ON \
        -D WITH_FFMPEG=ON \
        -D WITH_GSTREAMER=ON \
        -D WITH_TBB=ON \
        -D BUILD_TBB=ON \
        -D BUILD_TESTS=OFF \
        -D WITH_EIGEN=ON \
        -D WITH_V4L=ON \
        -D WITH_LIBV4L=ON \
        -D OPENCV_ENABLE_NONFREE=ON \
        -D INSTALL_C_EXAMPLES=OFF \
        -D INSTALL_PYTHON_EXAMPLES=OFF \
        -D BUILD_NEW_PYTHON_SUPPORT=ON \
        -D BUILD_opencv_python3=TRUE \
        -D OPENCV_GENERATE_PKGCONFIG=ON \
        -D BUILD_EXAMPLES=OFF ..
make -j4
sudo make install
sudo ldconfig
make clean
sudo apt-get update

#If it is working, finally
sudo rm -rf ~/opencv
sudo rm -rf ~/opencv_contrib
```
