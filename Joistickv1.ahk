#Persistent  ; Keep this script running until the user explicitly exits it.
SetTimer, WatchAxis, 3
return


WatchAxis:
JoyX := GetKeyState("JoyX")  ; Get position of X axis.
JoyY := GetKeyState("JoyY")  ; Get position of Y axis.
JoyR := GetKeyState("JoyR")  ; Get position of R axis.

if ((JoyX > 70) and (JoyY > 70))
    MouseMove, -10, -10, 0, R  ; Win+LeftArrow => Move cursor to the up left
else if ((JoyX < 30) and (JoyY > 70))
    MouseMove, 10, -10, 0, R  ; Win+RightArrow => Move cursor to the up right
else if ((JoyX > 70) and (JoyY < 30))
    MouseMove, -10, 10, 0, R  ; Win+UpArrow hotkey => Move cursor down left
else if ((JoyX < 30) and (JoyY < 30))
    MouseMove, 10, 10, 0, R  ; Win+DownArrow => Move cursor down right
else if (JoyX > 70)
    MouseMove, -10, 0, 0, R  ; Win+LeftArrow => Move cursor to the left
else if (JoyX < 30)
    MouseMove, 10, 0, 0, R  ; Win+RightArrow => Move cursor to the right
else if (JoyY > 70)
    MouseMove, 0, -10, 0, R  ; Win+UpArrow hotkey => Move cursor upward
else if (JoyY < 30)
    MouseMove, 0, 10, 0, R  ; Win+DownArrow => Move cursor downward

if (JoyR < 30)
    	Click, WheelDown
else if (JoyR > 70)
    	Click, WheelUp	


Joy1:: ; Triangulo
Loop 5
    Click, WheelDown
return

Joy2:: ; Bola
V:= GetKeyState("JoyR")
MsgBox, %V%
return

Joy3:: ; Xis
Loop 5
    Click, WheelUp
return

Joy4:: ; Quadrado
U:= GetKeyState("JoyR")
MsgBox, %U%
return

Joy5:: ; L1
Click
return

Joy6:: ; R1
send E
return

Joy7:: ; L2
Click, right
return

Joy8:: ; R2
send G
return

Joy9:: ; Start
send I
return

Joy10:: ; Select
send J
return

Joy11:: ; R3
Pause
return

Joy12:: ; L3
send L3
return

Joy13:: ; L3
send k
return