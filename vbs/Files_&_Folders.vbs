' Option Explicit
' Dim fso

' Set fso = CreateObject("Scripting.FileSystemObject")

' If fso.FileExists("C:\Users\Jeremy\Desktop\sinking.jpg") then
' fso.CopyFile "C:\Users\Jeremy\Desktop\sinking.jpg" , "C:\Users\Jeremy\Downloads\Test\"
' Else
' wscript.echo "doesn't exist"
' End If
' ______________________________________________________

' Know the Basics:
' ------------------------------------------------------------------------------------------
' Set x = CreateObject("Scripting.FileSystemObject")

' x.CopyFile "LOCATION" , "NEW LOCATION"
' x.CopyFolder "LOCATION" , "NEW LOCATION"
' ------------------------------------------------------------------------------------------
' x.MoveFile "LOCATION" , "NEW LOCATION"
' x.MoveFolder "LOCATION" , "NEW LOCATION"
' ------------------------------------------------------------------------------------------
' RENAME: works with both copy and move command.

' x.MoveFile "LOCATION" , "NEW or same LOCATION\newname.ext"
' x.MoveFolder "LOCATION" , "NEW or same LOCATION\newname"
' ------------------------------------------------------------------------------------------
' ASTERISK: when moving/copying files.

' Any Name        | *.extension
' Any Extension  | name.*
' Any/All Files     | *.*

Option Explicit
Dim fso

set fso=CreateObject("Scripting.FileSystemObject")
fso.MoveFile "C:\Users\andregoro\Documents\script\*.vbs","C:\Users\andregoro\Documents\script\vbs\"