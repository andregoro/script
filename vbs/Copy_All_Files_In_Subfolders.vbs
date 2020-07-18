Option Explicit
Dim objFSO : Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim objSTR, objEND, objTYP, objFILE
Dim Folder, SubFolder

objSTR = "C:\Users\Jeremy\Videos\SimplyCoded\IMAGEs"
objEND = "C:\Users\Jeremy\Desktop\Test\"

For Each objFILE in objFSO.GetFolder(objSTR).Files
objFILE.Copy objEND
Next
  
Call srchSUBFOLD(objFSO.GetFolder(objSTR))

Function srchSUBFOLD(Folder)
For Each SubFolder in Folder.SubFolders
For Each objFILE in objFSO.GetFolder(Subfolder.Path).Files
objFILE.Copy objEND
Next
Call srchSUBFOLD(SubFolder)
Next
End Function

MsgBox "Finished", vbInformation