Set WshShell=wscript.createobject("wscript.shell")
Dim opcao
opcao=msgbox(" Escolha a opção",VbYesNo)

If opcao =VbYes Then
	msgbox "voce clicou em yes"
	WshShell.run "Calc.exe"
else
	msgbox "voce clicou em no"
	WshShell.run "notepad"
if end