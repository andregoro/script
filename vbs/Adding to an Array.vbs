Option Explicit
Dim Animals, objSHL

Animals = Array("Horse", "Turtle", "Rabbit", "Squirrel", "Pig")

Animals = AddtoArray(Animals)

With CreateObject("Wscript.Shell")
.run "notepad.exe"
WScript.Sleep 1000
.sendkeys Join(Animals, vbLf)
End With

Function AddtoArray(CurrArray)
Dim Value
If IsArray(CurrArray) Then
Do
Value = InputBox(Join(CurrArray,vbLf),"Add to your array.")
ReDim Preserve CurrArray(UBound(CurrArray) + 1)
CurrArray(UBound(CurrArray)) = Value
Loop Until Value = ""
End If
AddtoArray = CurrArray
End Function