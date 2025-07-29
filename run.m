while true
 brick.MoveMotor('A', -50);
 brick.MoveMotor('D', -50);
 distance = brick.UltrasonicDist(4);
 brick.SetColorMode(1, 2);
 color = brick.ColorCode(1);
 disp('work');
 if color == 5                 
     disp('red');
     brick.StopMotor('AD', 'Brake');
     brick.playTone(100, 800, 500);
     pause(1);
     brick.MoveMotor('A', -50);
     brick.MoveMotor('D', -50);
     pause(0.3);
 elseif color == 2
     disp('blue');
     brick.StopAllMotors();
     run('keyboardcontrol')
     pause(6);
 elseif color == 3
     disp('green');
     brick.StopAllMotors();
     brick.playTone(100, 800, 500);
     pause(0.75);
     brick.playTone(100, 800, 500);
     pause(0.75);
     brick.playTone(100, 800, 500);
     break;
 end
 if(distance < 50 && brick.TouchedPress(3) == 0)
     brick.MoveMotor('A',50);
     brick.MoveMotor('D', 0);
     pause(1);
 elseif (distance > 64 && brick.TouchPressed(2)==0)
     brick.MoveMotor('A', 0);
     brick.MoveMotor('D', 50);
     pause(1);
      
     brick.MoveMotor('A', -50);
     brick.MoveMotor('B', -50);
     pause(3.5);
 elseif(brick.TouchedPressed(2)==3)
     brick.MoveMotor('A', -40);
     brick.MoveMotor('B', -40);
     pause(1);
      
     brick.MoveMotor('A', 0);
     brick.MoveMotor('D', 40);
     pause(1);
 else
     brick.MoveMotor('AB', -40)
 end
End
