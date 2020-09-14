#Persistent  ; Keep this script running until the user explicitly exits it.
SetTimer, WatchAxis, 5
return

WatchAxis:
JoyX := GetKeyState("JoyX")  ; Get position of X axis.
JoyY := GetKeyState("JoyY")  ; Get position of Y axis.
KeyToHoldDownPrev := KeyToHoldDown  ; Prev now holds the key that was down before (if any).

if (JoyX > 70)
    KeyToHoldDown := "Left"
else if (JoyX < 30)
    KeyToHoldDown := "Right"
else if (JoyY > 70)
    KeyToHoldDown :="Up"
else if (JoyY < 30)
    KeyToHoldDown :="Down"
else
    KeyToHoldDown := ""

if (KeyToHoldDown = KeyToHoldDownPrev)  ; The correct key is already down (or no key is needed).
    return  ; Do nothing.

; Otherwise, release the previous key and press down the new key:
SetKeyDelay -1  ; Avoid delays between keystrokes.
if KeyToHoldDownPrev   ; There is a previous key to release.
    Send, {%KeyToHoldDownPrev% up}  ; Release it.
if KeyToHoldDown   ; There is a key to press down.
    Send, {%KeyToHoldDown% down}  ; Press it down.
return