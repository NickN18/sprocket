%TODO:
% MoveMotor() is utilized with a power set at 60% for a set distance that
% we have yet to record. Only one wheel will be able to be put in reverse
% while the other either stays in position or moves forward.
clear all

brick = ConnectBrick('EV33');

while(1 == 1)
    dir = input("Enter a direction (W: Go forward, A: Turn left, S: Go backwards, D: Turn right): ", 's');

    %Port D is the clutch, Port B is the motor
    
    switch(dir)
        case {'A', 'a'}
            brick.MoveMotor('D', 30);
            brick.MoveMotor('B', -100);
                        
        case {'W', 'w'}
            brick.MoveMotor('D', -30);
            brick.MoveMotor('B', -100);
            
        case {'D', 'd'}
            brick.MoveMotor('D', 30);
            brick.MoveMotor('B', 100);

          %Port D is the clutch, Port B is the motor  
        case {'S', 's'}
            brick.MoveMotor('D', -30);
            brick.MoveMotor('B', 100);
            
        case {'Q', 'q'}
            brick.StopMotor('D');
            brick.StopMotor('B');
           
    end

end

%As the robot moves, the drive motor pushes the clutch back and keeps it in
%neutral

%TODO: 
%Gyro Control
% The gyro sensor is controlled by the object gyroSensor. This angle should be
% reset when there is a wall present. While the gyro should always stay at
% zero (theoretically) it is be if we reset it to zero every time.

%myGyro = gyroSensor(EV33, 'A');
%angle = resetRotationAngle(myGyro);

%TODO:
%Maze Algorithm
% The maze algorithm used will be the right wall follower. The ultrasonic
% sensor will be positioned on the right side of the robot. 



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


