Option Explicit
Dim fso, obj, nDirS, nDirD


Set fso = CreateObject("Scripting.FileSystemObject")
Set obj = CreateObject("wscript.shell")
nDirS = obj.SpecialFolders("D")
nDirD = obj.SpecialFolders("Desktop") 

fso.CopyFile nDirD & "\Tonight.mp3" , nDirS & "\"

msgbox "complete"

'Set x = CreateObject("WScript.Shell")
'x.SpecialFolders("FOLDERNAME")

msgbox obj.specialfolders("Desktop")
' List of Special Folders:
' ------------------------------------------------------------------------------------------
' AllUsersDesktop
' AllUsersStartMenu
' AllUsersPrograms
' AllUsersStartup
' Desktop
' Favorites
' Fonts
' MyDocuments
' NetHood
' PrintHood
' Programs
' Recent
' SendTo
' StartMenu
' Startup
' Templates