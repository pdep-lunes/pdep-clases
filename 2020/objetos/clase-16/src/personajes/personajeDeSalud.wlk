import personaje.*

class PersonajeDeSalud inherits Personaje {
	
	const energiaAAgregar
	
	override method manoAManoContra(personaje) {
		energia += energiaAAgregar
	}
	
}