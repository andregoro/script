Option Explicit
Dim FSO,oFILE

msgbox "",vbYesNo,""
const vbREAD=1,vbWRITE=2,vbAPP=8
Set FSO = CreateObject("Scripting.FileSystemObject")

set oFILE=FSO.OpenTextFile("C:\Users\andregoro\Documents\GitHub\BAT\te.txt",vbREAD,true)

' Set fso = CreateObject("Scripting.FileSystemObject")

' fso.OpenTextFile("LOCATION", WHAT-FOR, CREATE-NEW)

' LOCATION = full path, name, and extension of your text file.
' WHAT-FOR = are you opening it to read, write, or append it?
' CREATE-NEW = putting [true] value will create a file if one doesn't exist.