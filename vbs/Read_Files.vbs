option explicit
Dim fso,oFile

set fso=CreateObject("Scripting.FileSystemObject")
set oFile=fso.OpenTextFile("E:\jo.txt",1,true)

msgbox oFile.ReadAll()

' for a = 1 to 4
' msgbox oFile.read(a)
' next
' oFile.ReadLine
' oFile.ReadAll
' oFile.Close
' Set fso = CreateObject("Scripting.FileSystemObject")

' Set x = fso.OpenTextFile("FILE-LOCATION",1)
' x.Read(#) = read number of characters.
' x.ReadLine = read lines.
' x.ReadAll = read all of the file.
' x.AtEndOfStream = check to see if file is at the end.
' x.Close = close the command for reading.