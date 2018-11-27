# cmv_tools
This directory contains different unserspace tools for interacting with the Cmosis CMV12000 image sensor.

Have a look at the [wiki](https://wiki.apertus.org/index.php/AXIOM_Beta/AXIOM_Beta_Software) for more details.

# How to build
This projects uses cmake to make things easier in our size of codes. Cmake supports various functions and the way of writing a modern CMake can be found [here](https://gist.github.com/mbinna/c61dbb39bca0e4fb7d1f73b0d66a4fd1) / [article](http://www.brianlheim.com/2018/04/09/cmake-cheat-sheet.html). The default install directory (prefix) is __/usr/local/__.

This projects use `Release` as the default build configuration (with optimization -O3).

1. Enter the build directory, we assume it's in source build here.
2. `cmake .` The dot means the path to where CMakeLists.txt resides.
3. `make`

## cmv_hist3

This is a tool to read and ouput histogram data from the image sensor inside the AXIOM Beta.

Documentation:
[wiki.apertus.org/index.php/AXIOM_Beta/AXIOM_Beta_Software#Image_Histogram](https://wiki.apertus.org/index.php/AXIOM_Beta/AXIOM_Beta_Software#Image_Histogram)

## cmv_snap3

This is a tool to capture still images and control related image sensor registers inside the AXIOM Beta.

Documentation:
[wiki.apertus.org/index.php/AXIOM_Beta/AXIOM_Beta_Software#Capture_an_image](https://wiki.apertus.org/index.php/AXIOM_Beta/AXIOM_Beta_Software#Capture_an_image)
