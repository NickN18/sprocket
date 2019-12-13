# sprocket
Code implementation for sprocket robot that will navigate a maze autonomously.

The overall goal of this code is to allow a robot built out of a lego mindstorm kit to navigate a maze autonomously using
two motors, a driver and a clutch motor, an ultrasonic sensor, a color sensor, and (potentially) a gyro sensor. 
The ultrasonic sensor is mounted to the right hand side of the robot. After moving and not detecting a wall to the right
a set distance, the robot will be instructed to make a 90 degree turn, measure the distance of the nearest wall, and determine
if that direction should be taken. 

Update 1: The gyro sensor was previously being used, however, we were able to figure out how to properly turn 90 degrees without it, so the code has been ditched. The robot works autonomous moving through the maze, yet color detection and resulting movement is still questionable as of 12/2/19.


Update 2: The robot is now fully functional and capable of autonomously navigating a maze. The right wall following algorithm has been implemented for its way to figure out the maze. Additionally, the code is built so that if certain colors were detected by a color sensor pointed at the ground (in place of real world object like traffic lights and stop signs), the robot obeys the laws associated with said colors. A claw is utilized to pick up an object and transport it to another area previously designated. This robot is fully functional as of 12/11/19.
