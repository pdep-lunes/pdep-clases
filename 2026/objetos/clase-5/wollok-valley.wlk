// ANIMALES
class Animal {
    var property nivelDeAmistad 
    var property nivelDeHumor
    const property valorBaseBien

    method producirBien()
    method serAcariciado()
    method comer()
    method dormirAfuera()
    method dormirAdentro(){
       self.aumentarHumor(10)
    }
    method aumentarAmistad(unaCantidad) {
        nivelDeAmistad += unaCantidad
    }
    method aumentarHumor(unaCantidad) {
        nivelDeHumor += unaCantidad
    }
    method perderAmistad(unaCantidad) {
        nivelDeAmistad -= unaCantidad
    }
    method perderHumor(unaCantidad) {
        nivelDeHumor -= unaCantidad
    }
    method calcularGanancias()
    method bonusAmistad() 
}


//Gallina
class Gallina inherits Animal(valorBaseBien = 50) {
    var huevosProducidos

    override method serAcariciado(){
        self.aumentarAmistad(15)
        self.aumentarHumor(2)
    }

    override method comer() {
        self.aumentarAmistad(50)
        self.aumentarHumor(5)
    }

    override method dormirAfuera() {
      self.perderAmistad(100)
      self.perderHumor(7)
      huevosProducidos -= 3
    }

    override method dormirAdentro() {
      super()
      self.aumentarAmistad(10)
    }

    override method producirBien() {
      if(nivelDeHumor >= 4){
        huevosProducidos += 1
        self.perderHumor(1)
      }
    }
    override method calcularGanancias() = huevosProducidos * (valorBaseBien + self.bonusAmistad())
    override method bonusAmistad() = nivelDeAmistad * 1.4
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

class Vaca inherits Animal(valorBaseBien = 100){
    var property litrosDeLecheProducidos

    override method serAcariciado(){
        self.aumentarAmistad(150)
        self.aumentarHumor(3)
    }

    override method comer() {
        self.aumentarAmistad(140)
        self.aumentarHumor(6)
    }

    override method dormirAfuera() {
      self.perderAmistad(60)
    }

    override method producirBien() {
      if(nivelDeHumor > 2){
        litrosDeLecheProducidos += 1
        self.perderHumor(5)
      }
    }
    override method calcularGanancias() = litrosDeLecheProducidos * (valorBaseBien + self.bonusAmistad())
    override method bonusAmistad() = nivelDeAmistad * 1.9
}

// PATO 

class Pato inherits Animal(valorBaseBien = 95){
    var property valorPluma = 250
    var property huevosProducidos
    var property plumasProducidas 

     override method serAcariciado(){
        self.perderAmistad(15)
        self.perderHumor(5)
    }

    override method comer() {
        self.aumentarAmistad(20)
        self.aumentarHumor(4)
    }

    override method dormirAfuera() {
      self.perderAmistad(5)
      self.aumentarHumor(2)
    }

    override method producirBien() {
      if(nivelDeHumor > 5){
        huevosProducidos += 1
        self.perderHumor(2)
      }
    }
    method producirPlumas(){
      if(nivelDeHumor >= 10){
        plumasProducidas +=1
        self.perderHumor(1)
      }
    }
    override method calcularGanancias() = huevosProducidos * (valorBaseBien + self.bonusAmistad()) + plumasProducidas * (valorPluma + self.bonusAmistad())
    override method bonusAmistad() = nivelDeAmistad * 1.5   
}

// Ro

object ro {
  const property animalesDeRo = #{turuleka, lola}

  method gananciasTotales() = animalesDeRo.sum({unAnimal => unAnimal.calcularGanancias()})

  method favoritosDeRo() = animalesDeRo.max({unAnimal => unAnimal.nivelDeAmistad()}) 
}


/*ejemplos de prueba*/

object turuleka inherits Gallina(nivelDeAmistad = 200, nivelDeHumor = 10, huevosProducidos = 6){
}

object lola inherits Vaca(nivelDeAmistad = 500, nivelDeHumor= 8, litrosDeLecheProducidos= 7) {
}