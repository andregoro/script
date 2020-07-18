Option Explicit
Dim x
Set x=CreateObject("wscript.shell")

x.run "notepad.exe"
wscript.sleep 2000
x.sendkeys "Hello there"

x.sendkeys "{enter}"
x.sendkeys "Hello there"