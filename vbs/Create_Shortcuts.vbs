Option Explicit
Dim obj,nLink

set obj =CreateObject("wscript.shell")

set nLink=obj.CreateShortcut("C:\Users\andregoro\Desktop\newlink.lnk")

nLink.TargetPath ="C:\Users\andregoro\Music\Nightcore - Not Gonna Die (With intro)-128.mp3"
nLink.Description="musica Nightcore - Not Gonna"
nLink.Save
'atario