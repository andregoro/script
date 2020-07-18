Option Explicit

Class family
Private new_Name

Property Get LName
LName = "Doofenshmirtz"
End Property 

Property Get FName
FName = new_Name
End Property 

Property Let FName(strfirstname)
new_Name = strfirstname
End Property 

Function FullName
FullName = FName & " " &LName
End Function

End Class

Dim alex, john

Set alex = New family
Set john = New family

john.FName = "John"
alex.FName = "Alexander"

MsgBox john.FullName
