Sub SendEmail(ToAddress, Subject, Text)
    Dim iMsg 
    Dim iConf
    Dim Flds
 
    Set iMsg = CreateObject("CDO.Message")
    Set iConf = CreateObject("CDO.Configuration")
 
    iConf.Load -1
    Set Flds = iConf.Fields
    
    With Flds
        .Item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True
        .Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
        .Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = "andregoro123456@gmail.com"
        .Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "1232468369"
        .Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com" 'smtp mail server
        .Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
        .Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465 'stmp server
        .Update
    End With
 
    With iMsg
        Set .Configuration = iConf
        .To = "andregoro123456@gmail.com"
        .From = "andregoro123456@gmail.com"
        .Subject = "a"
        .TextBody = "as"
        .Send
    End With
 
    Set iMsg = Nothing
    Set iConf = Nothing
End Sub
 
If WScript.Arguments.Count <> 3 Then
    WScript.Echo "Usage: cscript.exe " & WScript.ScriptFullName & " email subject text"
Else 
    SendEmail WScript.Arguments(0), WScript.Arguments(1), WScript.Arguments(2)
End If

