#include FcnLib.ahk

;TODO this doesn't always seem to be enough.
;maybe we should make a RunWaitOpen() fcn so that it runs the app, then waits to see if the app opens up
;  if the app doesn't open a window, then it tries to do the run command again
Run, "C:\Program Files (x86)\Pidgin\pidgin.exe"

joinIrc("ahk")
joinIrc("ahk-social")

ForceWinFocus("Buddy List")
Send, ^m
ForceWinFocus("Pidgin")
Send, frigg{ENTER}

ForceWinFocus("frigg")
Send, ^!a

ForceWinFocus("Buddy List")
WinClose
ExitApp

joinIrc(channel)
{
   ForceWinFocus("Buddy List")
   Send, ^c
   ForceWinFocus("Join a Chat")
   ;ControlSend, , {ALT DOWN}c{ALT UP}, Join a Chat
   Click(460, 100)
   Click(165, 115)
   SendRaw, #%channel%
   Send, {ENTER}
}
