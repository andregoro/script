Option Explicit
Dim ie,ipf

set ie=CreateObject("InternetExplorer.Application")

Sub WaitForLoad
    Do While IE.Busy
        WScript.Sleep 500
    loop
end sub 

ie.Navigate "https://www.youtube.com/watch?v=Cl3F9O-1Bj4"

Call WaitForLoad

ie.Visible = True

ie.Document.All.Item("search").Value="tirica nenw"

Call WaitForLoad