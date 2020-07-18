Option Explicit
Dim fso, cd, cd2, objC, objRd, objwR, linecount, before, current, after, change, i
Const vbRead=1, vbApp=8

Set fso = CreateObject("Scripting.FileSystemObject")
cd = Replace(Wscript.ScriptFullName, Wscript.ScriptName, "test.txt")
        'Or you could use the location of your file from anywhere so, something like this:
        'cd="C:/Users/Jeremy/Desktop/file2.txt"

cd2 = Replace(Wscript.ScriptFullName, Wscript.ScriptName, "new.txt")

fso.CreateTextFile cd2

Set objC = fso.OpenTextFile(cd, vbRead)
   linecount=0
   Do Until objC.AtEndOfStream
   linecount = linecount+1
   objC.SkipLine
   Loop
objC.Close


Set objRd = fso.OpenTextFile(cd, vbRead)
For i = 1 to linecount
  If i < 2 Then
         before = objRd.ReadLine
          Call oText

   ElseIf i = 2 Then
         current = objRd.ReadLine
         Call cText

   ElseIf i > 2 Then
         after = objRd.ReadAll
         Call nText
         Exit For
   End If
Next
objRd.Close


fso.CopyFile cd2, cd, True
fso.DeleteFile cd2


Sub oText
      Set objwR = fso.OpenTextFile(cd2, vbApp)       
      objwR.WriteLine before
      objwR.Close 
End Sub

Sub cText
      change = Replace(current, "ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd", "Adam")
      Set objwR = fso.OpenTextFile(cd2, vbApp)       
      objwR.WriteLine change
      objwR.Close
End Sub

Sub nText
      Set objwR = fso.OpenTextFile(cd2, vbApp)       
      objwR.Write after
      objwR.Close
End Sub