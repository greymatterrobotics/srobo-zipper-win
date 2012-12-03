Robot.zip Creation Script For Windows
=====================================

What it does
------------

This is a relatively simple batch file which combines the Student Robotics source with user created code to make a robot.zip for use with the Student Robotics power board. It is primarily intended to simplify the process of creating build systems for text editors/ides.

The script pulls the latest copy of pyenv from git://srobo.org/pyenv.git.

If you have a drive with a '.srobo' file in its root (as the usb flash drive provided by Student Robotics does), the robot.zip will automatically be placed there. Otherwise, it will default to the desktop. (Note: This script assumes your desktop is located at %userprofile%\Desktop)

Requirements
------------
For the script to run, Git must be on your system path. Other than that you can place the batch file anywhere, as long as 7za.exe and the pyenv directory are located in the same folder.

Usage
-----
The script should be run from the command line with the following syntax (including quotes):

	srobo-zipper-win "[user code location]"

Where [user code location] is the directory in which your code is located (for your code to run, at least one file in this directory should be called robot.py)