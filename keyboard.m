global key;
InitKeyboard();
while 1
   pause(0.1);
   switch key
       case 'uparrow'
           disp('Up');
           brick.MoveMotor('A', -50);
           brick.MoveMotor('D', -50);
          
       case 'downarrow'
           %disp('Down');
           brick.MoveMotor('A', 50);
           brick.MoveMotor('D', 50);
          
       case 'leftarrow'
           brick.MoveMotor('D', 50);
          
       case 'rightarrow'
           brick.MoveMotor('A', 50);
          
       case 0
           %disp('No Key Press');
           brick.StopMotor('ADC', 'Coast');
          
       case 'w'
           %disp('Crane Up');
           brick.MoveMotor('C', -10);
          
       case 's'
           %disp('Crane Down');
           brick.MoveMotor('C', 10);
          
       case 'q'
           break;
   end
end
