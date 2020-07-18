' Option Explicit
' Dim objFso, objOtF, cd,  content

' Set objFso = CreateObject("Scripting.FileSystemObject")
' cd = Replace(Wscript.ScriptFullName, Wscript.ScriptName, "test.txt")

' Set objOtF = objFso.OpenTextFile(cd, 1)
' content = objOtF.ReadAll
' objOtF.Close

' Set objOtF = objFso.OpenTextFile(cd, 2)
' objOtF.Write Replace(content, "andre", "")
' objOtF.Close

' wscript.echo "Complete."

'////////////////////////////////////////////////////////////////////////////////////////////
'atera uma determinada palavra
' Option Explicit
' Dim fso, objRd, objwR, cd, content, o, n, change

' cd = Replace(Wscript.ScriptFullName, Wscript.ScriptName, "test.txt")
' Set fso = CreateObject("Scripting.FileSystemObject")

' Set objRd = fso.OpenTextFile(cd, 1)
' content = objRd.ReadAll

' o=InputBox(content,"Replace: Enter a word or phrase you want to replace.")
' n=InputBox(content,"Replace - " & o & " - With:")

' change = Replace(content, o, n)
' objRd.Close 

' Set objwR = fso.OpenTextFile(cd, 2)
' objwR.Write change
' objwR.Close

' Set objRd = fso.OpenTextFile(cd, 1)
' msgbox objRd.ReadAll,vbInformation,"Here is your new Text."

' wscript.quit