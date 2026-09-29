// Creamos una clase para agrupar el COMPORTAMIENTO en común de los villano y no repetir lógica

class Villano {
  const nombre
  var nivelDeAmenaza
  var property estaOculto = true // inicialmente está oculto -> si no lo indico en la instancia, va a tomar este valor por default
  var property cantidadDeRehenes

  method nivelDeAmenaza() = nivelDeAmenaza

  method coeficienteDeMaldad() {
    if (estaOculto) {
      return 0
    } else {
      return nivelDeAmenaza * cantidadDeRehenes
    }
  }
}

// Creamos objetos (instanciamos) a partir de la clase Villano. Es importante darle valor a los atributos que no tengan setteado uno por defecto

const vilgax = new Villano(nombre ="vilgax", nivelDeAmenaza = 85, estaOculto = false, cantidadDeRehenes = 10)


const kevin11 = new Villano(nombre ="kevin 11", nivelDeAmenaza = 60, cantidadDeRehenes = 2)


const aggregor = new Villano(nombre ="aggregor", nivelDeAmenaza = 150, cantidadDeRehenes = 50)

// Gwen, la prima de Ben10, sabe si un villano es una amenaza grave a partir de un nivel de alerta terrestre

object gwen {
  method esUnaAmenazaGrave(villano, nivelDeAlertaTerrestre) {
    return villano.coeficienteDeMaldad() > nivelDeAlertaTerrestre
  }
}

object ben10 {
  const transformaciones = #{diamante, cuatroBrazos, xlr8}
  const villanosDerrotados = []

  method cantidadDetransformaciones() = transformaciones.size()

  method tieneDesbloqueadoA(alien) = transformaciones.contains(alien)

  method desbloquear(alien) {
    transformaciones.add(alien)
  }

  method fuerzaDeCadaAlien() = transformaciones.map({ alien => alien.fuerza() })

  method transformacionesCansados() = transformaciones.filter({ alien => alien.estaCansado() })

  method recargartransformaciones() {
    transformaciones.forEach({ alien => alien.recargarse() })
  }

  method estanTodosCansados() = transformaciones.all({ alien => alien.estaCansado() })

  method puedeVencerA(villano) = transformaciones.any({ alien => alien.puedeVencerA(villano) })

  method enfrentarA(villano) {
    if (self.puedeVencerA(villano)) {
      villanosDerrotados.add(villano)
    }
  }
}

// Si bien los aliens comparten COMPORTAMIENTO en común, al no ser idénticos (cada uno calcula la fuerza distinto), no nos alcanza lo que vimos hoy para solucionarlo

object diamante {
  var energia = 20
  const cristales = 8
  const property nombre = "diamante"

  method energia() = energia

  method fuerza() = cristales * 10

  method estaCansado() = energia < 30

  method recargarse() {
    energia += 20
  }

  method puedeVencerA(villano) = self.fuerza() > villano.nivelDeAmenaza()
}

object cuatroBrazos {
  var energia = 100
  const brazos = 4
  const property nombre = "cuatro brazos"

  method energia() = energia

  method fuerza() = brazos * 25

  method estaCansado() = energia < 30

  method recargarse() {
    energia += 20
  }

  method puedeVencerA(villano) = self.fuerza() > villano.nivelDeAmenaza()
}

object xlr8 {
  var energia = 25
  const velocidad = 900
  const property nombre = "XRL8"

  method energia() = energia

  method fuerza() = velocidad / 10

  method estaCansado() = false

  method recargarse() {
    energia += 20
  }

  method puedeVencerA(villano) = self.fuerza() > villano.nivelDeAmenaza()
}

object materiaGris {
  var energia = 100
  const inteligencia = 500
  const property nombre = "materia gris"


  method energia() = energia

  method fuerza() = inteligencia / 25

  method estaCansado() = energia < 30

  method recargarse() {
    energia += 20
  }

  method puedeVencerA(villano) = self.fuerza() > villano.nivelDeAmenaza()
}
