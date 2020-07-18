Dim startmundo

set fso= createObject("scripting.fileSystemObject")
set InputFile=fso.OpenTextFile("C:\Users\andregoro\Desktop\script\conversa.txt")


Do While Not (InputFile.atEndOfStream)
conversa=InputFile.ReadLine
	set startmundo=createObject("wscript.shell")
	 Wscript.sleep 500
startmundo.SendKeys "{TAB}"
	Wscript.sleep 500
startmundo.SendKeys 500
startmundo.SendKeys "" & contatos
Wscript.sleep 500
startmundo.SendKeys "{ENTER}"
Wscript.sleep 600
startmundo.SendKeys "^(v)"
Wscript.sleep 6000
startmundo.SendKeys "Test"
Wscript.sleep 2000
startmundo.SendKeys "{ENTER}"
Wscript.sleep 9000
Loop
Wscript.Quit