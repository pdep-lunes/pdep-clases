import personajes.personajes.*

class Combate {
	
	var equipo1 
	var equipo2 
	
	method equipo1() {
		return equipo1
	}
	
	method equipo2() {
		return equipo2
	}
	
	method combatir() {
		self.pelearEntre(equipo1, equipo2)
		self.pelearEntre(equipo2, equipo1)
	}
	
	method pelearEntre(unEquipo, otroEquipo) {
		unEquipo.forEach({personaje => personaje.lucharContra(otroEquipo)})
	}
	
	method equipoGanador() {
		self.combatir()
		var equipoGanador
		if(self.energiaEquipo(equipo1) > self.energiaEquipo(equipo2)) {
			equipoGanador = equipo1
		} else {
			equipoGanador = equipo2
		}
		return self.integrantesMasResistentes(equipoGanador).map({personaje => personaje.gritoDeVictoria()})
	}
	
	method energiaEquipo(unEquipo) {
		return unEquipo.sum({personaje => personaje.energia()})
	}
	
	method integrantesMasResistentes(equipo) {
		return equipo.filter({personaje => personaje.tieneEnergia() })
	}	
	
}

class CombateUltra inherits Combate {
	
	override method pelearEntre(unEquipo, otroEquipo) {
		super(unEquipo, otroEquipo)
		self.perderUnIntegrante(unEquipo)
	}
	
	method perderUnIntegrante(unEquipo) {
		unEquipo.remove(unEquipo.anyOne())
	}
}








