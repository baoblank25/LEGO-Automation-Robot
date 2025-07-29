#Code for Automatic LEGO robot
Features
Color Detection & Behavior:
  White: Stop immediately. If white is detected within 10 inches, reverse direction.
  Red: Stop for 1 second (simulates a traffic stop).
  Blue: Emit 2 beeps (signals pickup).
  Green: Emit 3 beeps (signals drop-off).

Navigation Logic:
  Scans surroundings by rotating to detect open space.
  If open space is found, proceed forward.
  If blocked, rotate in the opposite direction.
  If stuck, move backward and retry.

Task Priority Handling:
  Robot maintains a detected color array.
  When the drop-off color (green) is seen, it is prioritized.
  A helper function checks if the destination color is detected, triggering drop-off logic.

How to Run:
  Open MATLAB.
  Connect your LEGO EV3 brick.
  Load and run run.m.
  Observe the robot's behavior in response to its environment.



#Video Link: https://youtu.be/EwHl8RbT_ng
