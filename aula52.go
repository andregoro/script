package main
import "fmt"
func soma(a float64 ,b float64)float64 {
	return a + b
}
func main() {
	var funcaoSomar func(float64,float64) float64=func soma(a,b float64) float64 {
		return a +b		
	}
	var v = soma(3,4)
	fmt.Println(v)
}