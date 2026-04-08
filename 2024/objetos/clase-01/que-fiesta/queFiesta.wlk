// Well Known Object (WKO)
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

  // También un getter
  // method estrellas() {
  //   return estrellas
  // }

  // Setter
  method estrellas(unaCantidad) {
    estrellas = unaCantidad
  }

  method tieneTodoListo() = estrellas >= 4

  method globos() = globos

  method tieneSuficientesGlobos() = globos > 50
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
object fiesta {
  var property quienOrganiza = manic

  method estaPreparada() =
    quienOrganiza.tieneTodoListo() && quienOrganiza.tieneSuficientesGlobos()
}
