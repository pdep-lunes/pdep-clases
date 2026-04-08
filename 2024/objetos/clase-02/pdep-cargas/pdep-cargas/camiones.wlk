object verdurin {
  var cantidadDeCajones = 10
  const pesoDeCajon = 50
  var kilometraje = 700000

  method cantidadDeCajones(unaCantidad) {
    cantidadDeCajones = unaCantidad
  }

  method velocidadMaxima() =
    80 - self.pesoDeCarga().div(500)

  method pesoDeCarga() =
    cantidadDeCajones * pesoDeCajon

  method recorrer(unosKilometros, unaVelocidadMaxima) {
    kilometraje += unosKilometros
  }
}

object scanion5000 {
  const capacidadCombustible = 5000
  var densidad = 1

  method pesoDeCarga() {
    return densidad * capacidadCombustible
  }

  method densidad(unaDensidad) {
    densidad = unaDensidad
  }

  method velocidadMaxima() = 140

  method recorrer(unosKilometros, unaVelocidadMaxima) {}
}

object cerealitas {
  var deterioro = 0
  var property pesoDeCarga = 0

  method velocidadMaxima() {
    if (deterioro < 10) {
      return 40
    } else {
      return 60 - deterioro
    }
  }

  method recorrer(unosKilometros, unaVelocidadMaxima) {
    deterioro += (unaVelocidadMaxima - 45).max(0)
  }
}

