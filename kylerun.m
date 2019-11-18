

 % sim code
 %rem to fill in aps

%brick = ConnectBrick('EV33');

brick = SimBrick(); 
brick.conn.write('SET simulateClutch 1 1');
brick.conn.write('SET motorRange 3 -31 31');

brick.conn.write('SET motorRange 2 -2000 2000');
brick.conn.write('SET driveGearRatio 0.1666666 1.0');
brick.conn.write('SET effectiveWheelbase 4.45');

global key 
InitKeyboard();

while 1
    pause(.1);
    
    switch key 
        case 'uparrow'
            disp ("up arrow");
            % go forward
            brick.MoveMotor('B', -30);
            brick.MoveMotor('A', 100);
            pause(1);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            
        case 'downarrow'
            disp (" down arrow");
            % go backward
            brick.MoveMotor('B', -30);
            brick.MoveMotor('A', -100);
             pause(1);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
        case 'leftarrow' 
            disp ("left arrow");
            % go left
             brick.MoveMotor('B', 30);
             brick.MoveMotor('A', -100);
              pause(1);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            
        case 'rightarrow'
            disp ("Right arrow");
            % go right 
            brick.MoveMotor('B', 30);
            brick.MoveMotor('A', 100);
             pause(1);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
        case 0
            disp("nothing");
            
               brick.StopMotor('A');
               brick.StopMotor('B');
              
            
            
            
        case 'q'
            disp ("break");
           
            brick.StopMotor('A');
            brick.StopMotor('B');
            break;
    end
end
         



