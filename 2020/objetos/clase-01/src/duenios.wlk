import mascotas.*

object billy {
	var edad = 12
	const comidaFavorita = "asado"
	var energia = 200
	const mascota = poroto
	
	method jugarConMascota() {
		energia -= 50 
		mascota.jugar() //por un tema de encapsulamiento y declaratividad usamos jugar() y no setteamos la energía directamente
	}
	
	method energia() {
		return energia
	}
}

object mandy {
	var edad = 15
	const comidaFavorita = "milanesas"
	var energia = 200
	const mascota = sally
	
	method jugarConMascota() {
		energia -= 50 
		mascota.jugar() //por un tema de encapsulamiento y declaratividad usamos jugar() y no setteamos la energía directamente
	}
	
	method energia() {
		return energia
	}
}