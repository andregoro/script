option explicit
Dim nome

nome=InputBox("Digite seu nome ","informaçoes")
if(nome = "")then
    msgbox "erro"
else
    msgbox nome,vbOKOnly,"este e seu nome."
end if