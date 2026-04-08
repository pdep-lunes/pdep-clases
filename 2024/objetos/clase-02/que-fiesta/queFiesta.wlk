object fiesta {
  var property quienOrganiza = manic

  // polimorfismo
  method estaPreparada() =
    quienOrganiza.tieneTodoListo() && quienOrganiza.tieneSuficientesGlobos()
  // para que pueda haber polimorfismo tienen que entender
  // tieneTodoListo() y tieneSuficientesGlobos()
}

// PERSONAJES
object manic {
  // Estado
  var estrellas = 0
  var globos = 60

  // Comentario de una linea

  /*
    Comentario multi linea
  */

  // Comportamiento
  method encontrarEstrellas() {
    // estrellas = estrellas + 8
    estrellas += 8
  }

  method regalarEstrellas() {
    estrellas = 0.max(estrellas - 1)
  }

  // Getter
  method estrellas() = estrellas

  // Setter
  method estrellas(unaCantidad) {
    estrellas = unaCantidad
  }
  // También un getter
  // method estrellas() {
  //   return estrellas
  // }

  method tieneTodoListo() = estrellas >= 4

  method globos() = globos

  method tieneSuficientesGlobos() = globos > 50

  method comprarGlobos(unaCantidad){
    globos += unaCantidad
  }
}
// Interfaz: Conjunto de mensajes que entiende un objeto.
// Interfaz de manic:
// encontrarEstrellas()
// regalarEstrellas()
// estrellas()
// estrellas(unaCantidad)
// tieneTodoListo()
// globos()
// tieneSuficientesGlobos()


object chuy{
  var globos = 0

  method tieneTodoListo() = true

  method tieneSuficientesGlobos() = globos > 50
  
  method comprarGlobos(unaCantidad){
    globos += unaCantidad
  }
}

object capy{
  var latas = 0
  var globos = 0

  method recogerLatas(){
    latas += 1
  }
  method reciclarLatas(){
    latas = 0.max(latas - 5)
  }
  method tieneTodoListo() = latas.even()

  method tieneSuficientesGlobos() = globos > 50

  method comprarGlobos(unaCantidad){
    globos += unaCantidad
  }

}