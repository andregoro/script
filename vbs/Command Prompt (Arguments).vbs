Option Explicit
Dim fso, drives, drive

Set fso = CreateObject("Scripting.FileSystemObject")
Set drives = Wscript.Arguments

For Each drive In drives
msgbox fso.GetFolder(drive &":\").Subfolders.Count ,vbOKOnly,"Folders in " &drive
Next