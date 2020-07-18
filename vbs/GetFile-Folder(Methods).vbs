Option Explicit
Dim objFSO, objFile, objFolder

Set objFSO = CreateObject("Scripting.FileSystemObject")

Set objFile = objFSO.GetFile("C:\Users\andregoro\Documents\script\vbs\test.vbs")
Set objFolder = objFSO.GetFolder("C:\Users\andregoro\Documents\script")


objFile.Copy "destination folder"
objFile.Move "destination folder"
objFile.Delete
objFile.OpenAsTextStream(IOMode).commands

objFolder.Copy "destination folder"
objFolder.Move "destination folder"
objFolder.Delete