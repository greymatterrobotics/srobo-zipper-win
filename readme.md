Robot.zip Creation Script For Windows
=====================================

What it does
------------

This is a relatively simple batch file which combines the Student Robotics source with user created code to make a robot.zip for use with the Student Robotics power board.
In order to use it, you need a copy of the pyenv folder available here from the [Student Robotics github](https://github.com/srobo/pyenv/tree/master/pyenv).

If you have a drive with a '.srobo' file in its root (as the usb flash drive provided by Student Robotics does), the robot.zip will automatically be placed there. Otherwise, it will default to the desktop. (Note: This script assumes your desktop is located at %userprofile%\Desktop)

This script should be relatively easily 

Usage
-----
You can place the batch file anywhere, as long as 7za.exe is located in the same folder. It should be run from the command line with the following syntax (including quotes):

	srobo-zipper-win "[user code location]" "[pyenv location]"

Where:
*   [user code location] is the directory in which your code is located (for your code to run, at least one file in this directory should be called robot.py)
*   [pyenv location] is the location of the pyenv folder available here from the [Student Robotics github](https://github.com/srobo/pyenv/tree/master/pyenv). To clarify, the subdirectories bin, firmware, lib and pylib should be found here.