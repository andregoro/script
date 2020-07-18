Option Explicit
Dim objFso, cd, cd2, objC, objRd, objwR, linecount, line, content, before, current, after, find, overight, ChooseLine, n, i

Set objFso = CreateObject("Scripting.FileSystemObject")
cd = "C:\Users\andregoro\Documents\script\vbs\test.txt"
cd2 = Replace(Wscript.ScriptFullName, Wscript.ScriptName, "new.txt")


Set objC = objFso.OpenTextFile(cd, 1)
   linecount=0
 Do Until objC.AtEndOfStream
   linecount = linecount+1
   line = objC.ReadLine
   content = content &linecount& ".) " &line& vbLf
 Loop
   ChooseLine=InputBox(content, "Choose a Line to Edit: 1 - " &linecount)
   If IsNumeric(ChooseLine) Then
   n=CInt(ChooseLine)
   Else
   MsgBox "WARNING: Value must be number!",vbCritical,"Please Run Again."
   WScript.Quit
   End If 
objC.Close

objFso.CreateTextFile cd2

Set objRd = objFso.OpenTextFile(cd, 1)
 For i = 1 to linecount
  If i < n Then
         before = objRd.ReadLine
          Call oText

   ElseIf i = n Then
         current = objRd.ReadLine
         Call cText

   ElseIf i > n Then
         after = objRd.ReadAll
         Call nText
         Exit For
   End If
 Next
objRd.Close


objFso.CopyFile cd2, cd, True

objFso.DeleteFile cd2


Sub oText
      Set objwR = objFso.OpenTextFile(cd2, 8)       
      objwR.WriteLine before
      objwR.Close 
End Sub

Sub cText
      find=InputBox(current ,"Replace: Enter a word or phrase you want to replace.")
      overight=InputBox(current ,"Replace - " & find & " - With:")
      Set objwR = objFso.OpenTextFile(cd2, 8)       
      objwR.WriteLine Replace(current, find, overight)
      objwR.Close
End Sub

Sub nText
      Set objwR = objFso.OpenTextFile(cd2, 8)       
      objwR.Write after
      objwR.Close
End Sub