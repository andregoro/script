Option Explicit
Dim obj
Dim a,b,c

a=wscript.scriptname
b=wscript.scriptfullname

msgbox a
msgbox b

c="loops.vbs"

set obj=createobject("wscript.shell")

obj.run "C:\Users\andregoro\Documents\script\vbs\"&c