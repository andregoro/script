Option Explicit 
Dim args, arg, list

Set args = WScript.Arguments

If Not args.Count = 3 Then 
 MsgBox  "Not enough arguments. You need 3, and you have: " & args.Count ,vbCritical
 WScript.Quit
Else
For Each arg In args
 list = list & arg & vbLf
Next
MsgBox list
End If