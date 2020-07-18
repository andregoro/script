Option Explicit
Dim Weekdays

Weekdays = Array("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")


If IsInArray("Monday", Weekdays) Then
    MsgBox "Yes, that is in your array."
    MsgBox Join(Weekdays, vbLf),0, "Here is all the values:"
Else
    MsgBox "No, that is not in your array."
    MsgBox Join(Weekdays, vbLf),0, "Here is all the values:"
End If