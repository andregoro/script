'Set wShell=CreateObject("WScript.Shell")
'Set oExec=wShell.Exec("mshta.exe ""about:<input type=file id=FILE><script>FILE.click();new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);close();resizeTo(0,0);</script>""")
Do
Choice =InputBox("programando:" & vbCrLf & "1 Estudo"& vbCrLf &"2 roteador"& vbCrLf &"3 cmd"& vbCrLf &"4 arquivo externo"& vbCrLf &"5 Sair")
CreateObject("SAPI.SpVoice").speak "Abrindo programa escolhido"
	
	If (Choice <> "") And (Choice <> vbNull) Then 
		Select Case Choice
		Case 1
			Set bin=CreateObject("wscript.shell")
			bin.CurrentDirectory = "C:\Users\andregoro\Documents\Video"
			bin.Run "Estudo.exe"
		Case 2
			Set bin=CreateObject("wscript.shell")
			bin.CurrentDirectory = "C:\Users\andregoro\Documents\GitHub\script\vbs"
			bin.Run "roteador.vbs"
		Case 3
			Set bin=CreateObject("wscript.shell")
		'	Set app=CreateObject("Shell.Application")
			'app.BrowseForFolder(0, "Choose a file:", &H4000, "C:\")
			bin.Run InputBox("comando:")
		Case 4
			Set wShell=CreateObject("WScript.Shell")
			Set oExec=wShell.Exec("mshta.exe ""about:<input type=file id=FILE><script>FILE.click();new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);close();resizeTo(0,0);</script>""")
			sFileSelected = oExec.StdOut.ReadLine
			wShell.Run sFileSelected
		Case 5
			WScript.Quit()
		End Select 
	End If	
Loop until Choice