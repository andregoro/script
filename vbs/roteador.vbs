Option Explicit

Dim op(3)
Dim res(3)
Dim i : i=1
Dim d
Dim obj
Dim v
Set obj=CreateObject("wscript.shell")
op(1)="IP:"
op(2)="usuario"
op(3)="Senha"
while i<4 
    v=inputbox(op(i))
    if v = "" then
        MsgBox "nao pode dixar em branco"
    Else
        'MsgBox v 
        res(i)=v
    '    MsgBox res(i)
        i=i+1
    end if 
Wend
MsgBox "Ok para iniciar"
obj.Run "http:\\" & res(1)
WScript.Sleep(4000)
obj.SendKeys(res(2))
obj.SendKeys "{Tab}"
WScript.Sleep(2000)
obj.SendKeys(res(3))
obj.SendKeys "{Enter}"
WScript.Sleep(2000)
'MsgBox()