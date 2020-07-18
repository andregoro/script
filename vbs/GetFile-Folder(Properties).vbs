Option Explicit 
Dim objFso, file, data
Dim objFso2, folder2, data2 
Set objFso2 = CreateObject("Scripting.FileSystemObject") 
Set folder2 = objFso2.GetFolder("C:") 
Set objFso = CreateObject("Scripting.FileSystemObject") 
Set file = objFso.GetFile("C:\Users\andregoro\Documents\GitHub\BAT\test.txt") 
data= data & "Arquivo" &vbLf 
data = "Attributes: " & file.Attributes &vbLf 
data = data & "DateCreated: " & file.DateCreated &vbLf 
data = data & "DateLastModified: " & file.DateLastModified &vbLf 
data = data & "Drive: " & file.Drive &vbLf 
data = data & "Name: " & file.Name &vbLf 
data = data & "ParentFolder: " & file.ParentFolder &vbLf 
data = data & "Path: " & file.Path &vbLf 
data = data & "Size: " & file.Size &vbLf 
data = data & "Type: " & file.Type &vbLf

MsgBox data



data2= data2 & "Diretorio" &vbLf 
data2 = "Attributes: " & folder2.Attributes &vbLf 
data2 = data2 & "DateCreated: " & folder2.DateCreated &vbLf 
data2 = data2 & "DateLastModified: " & folder2.DateLastModified &vbLf 
data2 = data2 & "Drive: " & folder2.Drive &vbLf 'data = data & "Files: " & folder.Files &vbLf 
data2 = data2 & "Name: " & folder2.Name &vbLf 
data2 = data2 & "ParentFolder: " & folder2.ParentFolder &vbLf 
data2 = data2 & "Path: " & folder2.Path &vbLf 
data2 = data2 & "Size: " & folder2.Size/4 &vbLf 'data = data & "SubFolders: " & folder.SubFolders &vbLf 
data2 = data2 & "Type: " & folder2.Type &vbLf 
MsgBox data2