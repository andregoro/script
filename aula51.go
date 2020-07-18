package main
import "fmt"
type Perfil struct {
	Altura float64
	Ativo  bool
	Profissao string
}
func main() {
	var perfil map[string]Perfil=make(map[string]Perfil)
	perfil["Joao"]=Perfil{
		1.74,true,"Medico"
	}
	fmt.Println(perfil)
	var perfil map[string]Perfil=map[string]Perfil{
		"Joao":{
			1.76,true,"Medico"
		}
		"Pedro":{
			1.86,false,"Matematico"
		}
	}////////////////////////////////////////////////////
}