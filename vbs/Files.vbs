Option Explicit
Dim fso

Set fso=CreateObject("Scripting.FileSystemObject")
if (fso.FileExists("a.f") )then
wscript.echo "yes"
else
wscript.echo "No"
end if