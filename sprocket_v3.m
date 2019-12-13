%TODO:
% MoveMotor() is utilized with a power set at 60% for a set distance that
% we have yet to record. Only one wheel will be able to be put in reverse
% while the other either stays in position or moves forward.
clear all
 
brick = ConnectBrick('EV33');
%mycolorsensor = ColorSensor('EV33');
brick.SetColorMode(3, 2); %mode color code (port, mode)
color = brick.ColorCode(3);
display(color);
carryPerson = false;
brick.MoveMotorAngleRel('C',-75,1000,'Brake');
 
distance = brick.UltrasonicDist(1);
 
while(1==1)

while(color == 6)
	%gyro_angle = brick.GyroAngle(2);
	%pause(.1);
	 
	distance = brick.UltrasonicDist(1);
    	if(distance > 45)
        	%Turn Right
    	 
        	brick.MoveMotor('D', 15);
        	brick.MoveMotorAngleRel('B', 100, 1150);
        	brick.WaitForMotor('B');
    	 
        	brick.StopMotor('D');
        	brick.StopMotor('B');
    	 
    	 
        	%Go Forward
        	brick.MoveMotor('D',-15);
        	brick.MoveMotorAngleRel('B',-100,7590);
        	state = brick.MotorBusy('B');
        	while (state)
            	color = brick.ColorCode(3);
            	disp(color);
            	if(color == 5)
                	brick.StopMotor('D');
                	brick.StopMotor('B');
                	pause(2);
                	brick.MoveMotor('D', -15);
                	brick.MoveMotorAngleRel('B', -100, 3795);
                	pause(5);
                	%color = 6;
            	 
           	 
           	 
            	elseif(color == 3 && carryPerson == false)
                    	brick.StopAllMotors;
                    	pause(1);
                    	brick.MoveMotor('D', -15);
                    	brick.MoveMotorAngleRel('B',-100,2300,'Brake');
                    	brick.WaitForMotor('B');
                    	brick.StopAllMotors;
                	while(carryPerson == false)
                      	 
                   	 
                    	%keyboard claw controls
                    	%pause(3);
                    	dir = input("Blah: ", 's')
 
                    	switch(dir)
                        	case {'A', 'a'} %Turn left
    	 
                            	brick.MoveMotor('D', 15); %This line changes the direction in which the clutch moves, allowing sprocket to turn
                            	brick.MoveMotorAngleRel('B', -100, 50, 'Brake'); %90 degrees
                           	 
                        	case {'J', 'j'}
                            	brick.MoveMotor('D', 15);
                            	brick.MoveMotorAngleRel('B', -100, 1140, 'Brake');
    	 
                        	case {'W', 'w'} %Go forward
                            	brick.MoveMotor('D', -15);
                            	brick.MoveMotorAngleRel('B', -100, 200, 'Brake');
                           	 
                        	case {'I', 'i'}
                            	brick.MoveMotor('D', -15);
                            	brick.MoveMotorAngleRel('B', -100, 600, 'Brake');
    	 
                        	case {'D', 'd'} %Turn right
                            	brick.MoveMotor('D', 15);
                            	brick.MoveMotorAngleRel('B', 100, 50, 'Brake');
                           	 
                        	case {'L', 'l'}
                            	brick.MoveMotor('D', 15);
                            	brick.MoveMotorAngleRel('B', 100, 1140, 'Brake');
                        	%Port D is the clutch, Port B is the motor, Port C is claw  
                        	case {'S', 's'} %Go backwards
                            	brick.MoveMotor('D', -15);
                            	brick.MoveMotorAngleRel('B', 100, 200, 'Brake');
                           	 
                        	case {'K', 'k'}
                            	brick.MoveMotor('D', -15);
                            	brick.MoveMotorAngleRel('B', 100, 400, 'Brake');
                           	 
                        	case {'Z', 'z'}
                            	brick.MoveMotorAngleRel('C', 75, 200, 'Brake');
                        	case {'N','n'}
                            	brick.MoveMotorAngleRel('C',75,400,'Brake');
                        	case {'X', 'x'}
                            	brick.MoveMotorAngleRel('C', -75, 200, 'Brake');
                        	case {'M','m'}
                            	brick.MoveMotorAngleRel('C', -75, 400, 'Brake');
    	 
                        	case {'Q', 'q'}
                            	carryPerson = true;
                            	color = brick.ColorCode(3);
    
                           	 
                    	end
                   	 
                   	 
                	end
               	 
                	elseif(color == 4 && carryPerson == true)
                    	brick.StopAllMotors;
                    	pause(1);
                    	brick.MoveMotor('D', -15);
                    	brick.MoveMotorAngleRel('B',-100,2300,'Brake');
                    	brick.WaitForMotor('B');
                    	brick.StopAllMotors;
                	while(carryPerson == true)
                      	 
                   	 
                    	%keyboard claw controls
                    	%pause(3);
                    	dir = input("Blah: ", 's')
 
                    	switch(dir)
                        	case {'A', 'a'} %Turn left
    	 
                            	brick.MoveMotor('D', 15); %This line changes the direction in which the clutch moves, allowing sprocket to turn
                            	brick.MoveMotorAngleRel('B', -100, 50, 'Brake'); %90 degrees
                           	 
                        	case {'J', 'j'}
                            	brick.MoveMotor('D', 15);
                            	brick.MoveMotorAngleRel('B', -100, 1130, 'Brake');
    	 
                        	case {'W', 'w'} %Go forward
                            	brick.MoveMotor('D', -15);
                            	brick.MoveMotorAngleRel('B', -100, 200, 'Brake');
                           	 
                        	case {'I', 'i'}
                            	brick.MoveMotor('D', -15);
                            	brick.MoveMotorAngleRel('B', -100, 600, 'Brake');
    	 
                        	case {'D', 'd'} %Turn right
                            	brick.MoveMotor('D', 15);
                            	brick.MoveMotorAngleRel('B', 100, 50, 'Brake');
                           	 
                        	case {'L', 'l'}
                            	brick.MoveMotor('D', 15);
                            	brick.MoveMotorAngleRel('B', 100, 1130, 'Brake');
                        	%Port D is the clutch, Port B is the motor, Port C is claw  
                        	case {'S', 's'} %Go backwards
                            	brick.MoveMotor('D', -15);
                            	brick.MoveMotorAngleRel('B', 100, 200, 'Brake');
                           	 
                        	case {'K', 'k'}
                            	brick.MoveMotor('D', -15);
                            	brick.MoveMotorAngleRel('B', 100, 400, 'Brake');
                           	 
                        	case {'Z', 'z'}
                            	brick.MoveMotorAngleRel('C', 75, 200, 'Brake');
                        	case {'N','n'}
                            	brick.MoveMotorAngleRel('C',75,400,'Brake');
                        	case {'X', 'x'}
                            	brick.MoveMotorAngleRel('C', -75, 200, 'Brake');
                        	case {'M','m'}
                            	brick.MoveMotorAngleRel('C', -75, 400, 'Brake');
    	 
                        	case {'Q', 'q'}
                         	 
                            	carryPerson = true;
                            	color = brick.ColorCode(3);
                            	break;
                           	 
                    	end
                   	 
                   	 
                	end
                	 
                 	pause(2);
                	 
            	end
            	state = brick.MotorBusy('B');
           	 
           	 
    	end
         	 
        	brick.WaitForMotor('B');
    	 
        	brick.StopMotor('D');
        	brick.StopMotor('B');
        	end
	 
    	if(distance < 45)
        	%Turn Left
        	brick.MoveMotor('D', 15);
        	brick.MoveMotorAngleRel('B', -100, 1100);
        	brick.WaitForMotor('B')
    	 
        	brick.StopMotor('D');
        	brick.StopMotor('B');
    	 
    	 
    	end
end
end
            	 
%TODO:
% Clutch
% The clutch is a bar with three gears at an angle where the last gear is
% connecting to the forward gear. When you want to turn, the clutch is
% flipped and the bar move at a different position where the reverse is
% activated for only one wheel. The clutch doesn't restrict which wheel we
% have to use, which mean it becomes a software issue, but something as
% simple as determining which way to turn. Use MoveMotorAngleRel to
% calculate the position of the lock-step straight motion and the reverse
% pivoting motion so that I could just tell the program the move to the
% exact position, or even set them to variables.
 
%straightMotionAngle = MoveMotorAngleRel();
 
