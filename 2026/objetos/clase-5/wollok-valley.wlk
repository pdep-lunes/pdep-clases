// ANIMALES
class Animal {
    var property nivelDeAmistad 
    var property nivelDeHumor
    const property valorBaseBien
    var property esAve 

    method producirBien()
    method serAcariciado()
    method comer()
    method dormirAfuera()
    method dormirAdentro(){
       self.modificarHumor(+10)
    }

    method modificarAmistad(unaCantidad){
      nivelDeAmistad += unaCantidad
    }
    
    method modificarHumor(unaCantidad){
      nivelDeHumor += unaCantidad
    }

    method calcularGanancias()
    method bonusAmistad() 
}


//Gallina
class Gallina inherits Animal(valorBaseBien = 50, esAve = true) {
    var property huevosProducidos

    override method serAcariciado(){
        self.modificarAmistad(15)
        self.modificarHumor(2)
    }

    override method comer() {
        self.modificarAmistad(50)
        self.modificarHumor(5)
    }

    override method dormirAfuera() {
      self.modificarAmistad(-100)
      self.modificarHumor(-7)
      huevosProducidos -= 3
    }

    override method dormirAdentro() {
      super()
      self.modificarAmistad(10)
    }

    override method producirBien() {
      if(nivelDeHumor >= 4){
        huevosProducidos += 1
        self.modificarHumor(-1)
      }
    }
    override method calcularGanancias() = huevosProducidos * (valorBaseBien + self.bonusAmistad())
    override method bonusAmistad() = nivelDeAmistad * 1.4
    method esDeCalidad() = huevosProducidos > 25
}

// Dinosaurio

class Dinosaurio inherits Gallina{
    var property esManso = false

    override method comer() {
      super()
      esManso = true
    }
    
    override method serAcariciado(){
      super()
      esManso = true
    }
}

//VACA

class Vaca inherits Animal(valorBaseBien = 100, esAve= false){
    var property litrosDeLecheProducidos

    override method serAcariciado(){
        self.modificarAmistad(150)
        self.modificarHumor(3)
    }

    override method comer() {
        self.modificarAmistad(140)
        self.modificarHumor(6)
    }

    override method dormirAfuera() {
      self.modificarAmistad(-60)
    }

    override method producirBien() {
      if(nivelDeHumor > 2){
        litrosDeLecheProducidos += 1
        self.modificarHumor(-5)
      }
    }
    override method calcularGanancias() = litrosDeLecheProducidos * (valorBaseBien + self.bonusAmistad())
    override method bonusAmistad() = nivelDeAmistad * 1.9
}

// PATO 

class Pato inherits Animal(valorBaseBien = 95, esAve = true){
    var property valorPluma = 250
    var property huevosProducidos
    var property plumasProducidas 

     override method serAcariciado(){
        self.modificarAmistad(-15)
        self.modificarHumor(-5)
    }

    override method comer() {
        self.modificarAmistad(20)
        self.modificarHumor(4)
    }

    override method dormirAfuera() {
      self.modificarAmistad(-5)
      self.modificarHumor(2)
    }

    override method producirBien() {
      if(nivelDeHumor > 5){
        huevosProducidos += 1
        self.modificarHumor(-2)
      }
    }
    method producirPlumas(){
      if(nivelDeHumor >= 10){
        plumasProducidas +=1
        self.modificarHumor(-1)
      }
    }
    override method calcularGanancias() = huevosProducidos * (valorBaseBien + self.bonusAmistad()) + plumasProducidas * (valorPluma + self.bonusAmistad())
    override method bonusAmistad() = nivelDeAmistad * 1.5   
    method esDeCalidad() = huevosProducidos > 10
}

// Ro

object ro {
  const property animalesDeRo = #{turuleka, lola}

  method gananciasTotales() = animalesDeRo.sum({unAnimal => unAnimal.calcularGanancias()})

  method favoritosDeRo() = animalesDeRo.max({unAnimal => unAnimal.nivelDeAmistad()})

  method avesDeRo() = animalesDeRo.filter({unAnimal => unAnimal.esAve()})

  method avesDeCalidad() = self.avesDeRo().filter({unAnimal => unAnimal.esDeCalidad()})
}


/*ejemplos de prueba*/

object turuleka inherits Gallina(nivelDeAmistad = 200, nivelDeHumor = 10, huevosProducidos = 6, esAve = true){
}

object lola inherits Vaca(nivelDeAmistad = 500, nivelDeHumor= 8, litrosDeLecheProducidos= 7, esAve = false) {
}