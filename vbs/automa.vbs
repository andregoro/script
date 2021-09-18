Option Explicit 
Dim s
Set s=createobject("wscript.shell")
do 
s.run"calc.exe"
wscprit.sleep 1000
s.run"taskkill /im calc.exe"
wscprit.sleep 1000
loop