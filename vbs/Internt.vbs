Option Explicit
Dim ei,x

Set x=CreateObject("wscript.shell")
set ei=CreateObject("InternetExplorer.Application")

ei.Navigate "http://www.facebook.com/"
ei.Toolbar=0
ei.StatusBar=0

Do while ei.Busy
    wscript.sleep 200
loop


x.sendkeys "cow"
x.sendkeys "{enter}"
x.sendkeys "pass"