import personaje.*

class PersonajeOfensivo inherits Personaje {
	
	override method manoAManoContra(personaje) {
		personaje.perderEnergia(personaje.energia() * 0.50)
	}

}
