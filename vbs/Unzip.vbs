Option Explicit
Dim objFSO : Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim objAPP : Set objAPP = CreateObject("Shell.Application")
Dim COMP   : COMP = "C:\Users\Jeremy\Desktop\Test.zip"
Dim EXTR   : EXTR = Left(COMP, InStrRev(COMP,".") - 1)

If Not objFSO.FolderExists(EXTR) then
objFSO.CreateFolder EXTR
End If

objAPP.NameSpace(EXTR).CopyHere(objAPP.NameSpace(COMP).Items) 