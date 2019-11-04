# sprocket
Code implementation for sprocket robot that will navigate a maze autonomously.

The overall goal of this code is to allow a robot built out of a lego mindstorm kit to navigate a maze autonomously using
two motors, a driver and a clutch motor, an ultrasonic sensor, a color sensor, and (potentially) a gyro sensor. 
The ultrasonic sensor is mounted to the right hand side of the robot. After moving and not detecting a wall to the right
a set distance, the robot will be instructed to make a 90 degree turn, measure the distance of the nearest wall, and determine
if that direction should be taken. 
