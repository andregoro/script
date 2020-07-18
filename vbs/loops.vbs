Option Explicit
Dim a,b,c
Do
msgbox "hello"
'wscript.quit'break
exit do 'break 
Loop


'ssssssssssssssssssssssssssssssss
a=1

Do until a=5
a=a+1
msgbox "until "&a
Loop


b=1
Do while b<5
b=b+1
msgbox "while "&b
Loop

'ssssssssssssssssssssssssssssssss

Do until c=vbYes
c=msgbox("Click yes",vbYesNo)
Loop

Do until c="joo"
c=inputbox("Password")
Loop