import personajeDeSalud.*
import personajeOfensivo.*
import personaje.*

const pamela = new PersonajeDeSalud(
	energia = 6000,
	inventario = ["algodon", "agua oxigenada", "cinta", "cinta"],
	gritoDeVictoria = "Acá pasó la Pamela",
	energiaAAgregar = 400
	)

const pocardo = new PersonajeDeSalud(
	energia = 5600,
	inventario = ["curitas", "sobres de azucar", "cotonetes"],
	gritoDeVictoria = "¡Siente el poder de la música!",
	energiaAAgregar = 500
)


const tulipan = new PersonajeOfensivo(
	energia = 8400,
	inventario = ["rastrillo", "maceta", "maceta", "manguera"],
	gritoDeVictoria = "Hora de cuidar a las plantas"		
)

object toro inherits Personaje(
	energia = 7800, 
	inventario = #{}, 
	gritoDeVictoria = "No se metan con el toro"
) {

	override method manoAManoContra(personaje) {
		personaje.perderEnergia(personaje.cantidadDeElementos() * 200)
		inventario.add(personaje.quitarUltimoElemento())
	}
	
	override method ultimoElemento() {
		return inventario.asList().last()
	}

}
