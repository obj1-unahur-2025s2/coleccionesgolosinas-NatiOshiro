class Golosina{
  var precio
  var sabor
  var peso
  method precio()  
  method sabor()  
  method tieneGluten()
  method peso() 
  
  method mordida() {
    peso =- 1
  } 
}
class Bombon{
  var peso

  method precio() = 5 
  method sabor() = frutilla 
  method tieneGluten() = false  
  
  method mordida() {
    peso = peso * 0.80 - 1
  }  
}
class Alfajor{
  var peso

  method precio() = 12 
  method sabor() = chocolate 
  method tieneGluten() = false
  
  method mordida() {
    peso = peso * 0.8
  }   
}
class Caramelo{
  var peso

  method precio() = 1
  method sabor() = frutilla 
  method tieneGluten() = false
  
  method mordida() {
    if(peso > 2){
      peso = peso * 0.1
    } 
  }  
}
class Chupetin{
  var peso

  method precio() = 2 
  method sabor() = naranja 
  method tieneGluten() = false

  method mordida() {
    peso =peso - peso * 0.1
  }  
}
class Oblea{
  var peso

  method precio() = 5
  method sabor() = vainilla 
  method tieneGluten() = true 
}
class Chocolatin{
  var peso
  var pesoInicial

  method pesoInicial() = pesoInicial
  method precio() = self.pesoInicial() * 0.5
  method sabor() = chocolate 
  method tieneGluten() = true
//?
  method mordida() {

  }  
}
class GolosinaBaniada inherits  Golosina{

  override method precio() = super() + 2
  override method peso() = super() + 4

  override method mordida() {
    peso = super() - 2
  }


}
class PastillaTuttiFriti{
  var peso
  var property tieneGluten

  var sabores = [frutilla, chocolate, naranja]

  method sabor() = sabores.first()
  method precio() {
    if (tieneGluten){
      return 10
    }
    else{
      return 7
    }
  }
  method mordida() {
    sabores.remove(sabores.first())
  }  

}
//* SABORES
object frutilla {}
object chocolate {}
object naranja {}
object vainilla {}