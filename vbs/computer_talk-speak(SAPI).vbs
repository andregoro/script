Option Explicit 
Dim vo: set vo= createObject("SAPI.SpVoice")
Dim a
vo.Rate= 2
vo.Speak InputBox("Digite algo")