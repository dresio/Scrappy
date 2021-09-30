# Scrappy
A basic platform for robot companions using commonly found or easily obtainable parts. It is designed to work in modules that can be switched in and out depending on avaialble parts and project requirements. All mechanical parts are prioritized to be 3D printable and assembled with M3 bolts and nuts. 
Source files are developed in Solidworks and KiCad.

![Scrappy](https://user-images.githubusercontent.com/16947932/135513655-8817629b-2fa1-49e6-b974-ee6b5d48eebb.jpg)

The rest of this is a live document on development of the project. Design requirements will be changed when further clarification of the projects development is needed. Everything else outlines further developement goals for the project to reach the so called final product.

## Design Requirements
1. All parts will be able to be sourced to be common parts that can be obtained relativly simply
2. Any non-sourced parts will be designed to be 3D printed. Some parts may also be able to be laser cut. Goal bed size is around 18cm cubed (Prusa MINI print size)
3. Modular support for multiple platforms depending on needs. Any of each part should be able to be replaced by another without switching any other parts. (Ex. Switch processing module from a microcontroller to a computer without replacing any motors, batteries, etc)
4. Electrical modules will communicate over CAN Bus. A standard connection should be used for all modules to make it rapidly expandable. A terminator resistor jumper will be on all modules so it can start or end anywhere. 

## Currently Under Development
* Scrappy Core and Main Mechanical Components
* Jetson Nano Codebase
* Mini SLA (Sealed Lead Acid) Battery Support
* Stepper Motor Support
* Hobby Servo Support
* ROS Support

## System Support Goals:
### Batteries
* SLA or LiFePo Batteries(12V or 24V)
* LiPo Batteries (2-6s)
* Lion Batteries (3-8s)

### Controllers
* Arduino Supported Microcontrollers (Focusing on Teensy Series)
* Raspberry Pi
* Jetson Nano

### Acuators
* Hobby Servos
* DC Motors
* Brushless Motors
* Stepper Motors

### Sensors
* Camera for Raspberry Pi and Jetson Nano
* Raspberry Pi Lidar

### Software
* ROS (Melodic or Eloquent) implementation
  * Will be updated to Noetic or Foxy when Jetpack gets updated
* CANbus network for modules

### Mechanical
* Core Versions
  * Different Core Modules for Different Battery Types
  * Multiple Core Sizes
* Mobility Attachments
  * Mount to Bottom of Core for Motors or Servos
* Sensor Attachments
  * Mount to sides and top of Core
* Display Attachments
  * Mounts to sides and top of Core
* Core Shell
  * Mounts Over Core and can simplify Sensor and Display Attachemnts

### Electrical
* Power Distribution System (Scaled with CANbus Network)
* DC Motor Controller Using H-Bridge
* Raspberry Pi and Jetson Nano Breakout (Hat)
* Arduino Teensy Breakout
