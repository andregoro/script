set Rede=WScript.CreateObject("WScript.Network")
info="Meu Dominio" & vbTab & "e " & Rede.UserDomain &_ 
vbCrlf & "Meu Computador" & vbTab & "e " & Rede.ComputerName &_
vbCrlf & "Meu usuario" & vbTab & "e " & Rede.UserName & vbCrlf
MsgBox(info),,"Infomaçoes, do meu sistema na rede"