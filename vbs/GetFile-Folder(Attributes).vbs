Option Explicit
Dim objFso, objFile, objFolder, s 
Set objFso = CreateObject("Scripting.FileSystemObject") 
Set objFile = objFso.GetFile("E:jo.txt") 
Set objFolder = objFso.GetFolder("E:go") 'To hide and unhide a file. 
If objFile.Attributes And 2 Then 
s = MsgBox("Switch?",vbYesNo,"Item is Hidden.") 
If s = vbYes Then 
objFile.Attributes = objFile.Attributes -2 
End If 
Else 
s = MsgBox("Switch?",vbYesNo,"Item is NOT Hidden.") 
If s = vbYes Then 
objFile.Attributes = objFile.Attributes +2 
End If 
End If 'To hide and unhide a folder 
If objFolder.Attributes And 2 Then 
    s = MsgBox("Switch?",vbYesNo,"Item is Hidden.") 
If s = vbYes Then 
objFolder.Attributes = objFolder.Attributes -2 
End If 
Else 
s = MsgBox("Switch?",vbYesNo,"Item is NOT Hidden.") 
If s = vbYes Then 
objFolder.Attributes = objFolder.Attributes +2 
End If 
End If