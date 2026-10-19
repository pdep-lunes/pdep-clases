class Sala{
  var nombre
  var dificultad
  var precioFijo = 10000
  
  method nombre()=nombre
  method precioExtra()
  
  method precioFinal()= precioFijo + self.precioExtra()

  method esDificil() = dificultad > 7

  method hype()
}

class SalaAnime inherits Sala{
  override method precioExtra()=7000
  override method hype() = 0

}
class SalaHistoria inherits Sala{
  var basadaEnHechoReal
  override method precioExtra()= dificultad*0.314
  override method esDificil() = super() && !basadaEnHechoReal
  override method hype() = 40
  
}
class SalaTerror inherits Sala{
  var sustos

  method haySuficientesSustos() = sustos > 5

  override method precioExtra(){
    if(self.haySuficientesSustos()){
      return sustos*0.20
    } else{
      return 0
    }
  }
  
  override method esDificil() = super() || self.haySuficientesSustos()
  override method hype() {
        throw new NoPuedeSerProbadaException(message = "¡No se puede probar, arruina la sorpresa!")
    }  
}

class NoPuedeSerProbadaException inherits Exception {

}
