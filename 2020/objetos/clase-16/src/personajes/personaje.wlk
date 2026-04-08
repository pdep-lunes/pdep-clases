class Personaje {
	
	var energia
	var inventario
	var gritoDeVictoria

	method gritoDeVictoria() {
		return gritoDeVictoria
	}
	
	method energia() {
		return energia
	}
	
	method inventario() {
		return inventario
	}
	
	method tieneEnergia() {
		return energia > 0
	}
	
	method lucharContra(equipo) {
		equipo.forEach({integrante => self.manoAManoContra(integrante)})
	}
	
	method manoAManoContra(personaje) //método abstracto
	
	method perderEnergia(cantidad) {
		energia -= cantidad
	}
	
	method cantidadDeElementos() {
		return inventario.size()
	}
	
	method ultimoElemento() {
		return inventario.last()
	}
	
	method quitarUltimoElemento() {
		var ultimoElemento = self.ultimoElemento()
		inventario.remove(ultimoElemento)
		return ultimoElemento
	}
	
}
