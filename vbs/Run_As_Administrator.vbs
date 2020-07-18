Sub RunAsAdmin()
   If WScript.Arguments.Named.Exists("RunAsAdmin") Then Exit Sub
   CreateObject("Shell.Application").ShellExecute _
      "WScript.exe", """" & WScript.ScriptFullName & """ /RunAsAdmin","","runas", 1
   WScript.Quit()
End Sub

RunAsAdmin()
