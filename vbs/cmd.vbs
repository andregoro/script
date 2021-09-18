Option Explicit
Dim args,arg

Set args=WScript.Arguments

For Each arg In args
	MsgBox	arg
Next	

Option Explicit
Dim fname, lname, age

fname = WScript.Arguments(0)
lname = WScript.Arguments(1)
age = WScript.Arguments(2)

MsgBox age