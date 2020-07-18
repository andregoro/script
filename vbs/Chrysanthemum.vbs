Option Explicit
Dim Files, File, myArray
Dim objFSO : Set objFSO = CreateObject("Scripting.FileSystemObject")

Set Files = objFSO.GetFolder(CreateObject("Wscript.Shell").SpecialFolders("Desktop")).Files
myArray = Array()
For Each File In Files
ReDim Preserve myArray(UBound(myArray) + 1)
myArray(UBound(myArray)) = File.Name
Next

MsgBox Join(myArray, vbLf)