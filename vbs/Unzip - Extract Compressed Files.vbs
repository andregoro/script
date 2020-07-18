Option Explicit
Dim objSHL : Set objSHL = WScript.CreateObject ("WScript.shell")
Dim ZippedFile, ExtractTo
ZippedFile = "C:\Users\Jeremy\Desktop\testzipfile.7z"
ExtractTo = "C:\Users\Jeremy\Desktop\testfolder"


'objSHL.Run """C:\Program Files\WinRar\WinRar.exe"" x "&ZippedFile&" -o"&ExtractTo,0,True

objSHL.Run """C:\Program Files\7-Zip\7z.exe"" x "&ZippedFile&" -o"&ExtractTo,0,True