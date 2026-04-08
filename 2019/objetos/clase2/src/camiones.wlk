object camionGanado {

	var kilometraje = 700.000
	var cantidadVacas = 10

	method pesoCarga() = cantidadVacas * 600

	method velocidadMaxima() = 80 - self.pesoCarga() / 1000
	
	method recorrerRuta(extension, velocidad){
		kilometraje = kilometraje + extension
	}

}

object scanion5000 {

	const capacidad = 5000
	var densidadLiquido = 1

	method pesoCarga() = densidadLiquido * capacidad

	method velocidadMaxima() = 140
	
	method recorrerRuta(extension, velocidad){
		// no hace nada
	}

}

object camionCerealero {

	var nivelDeterioro = 0
	var pesoCarga
	
	method pesoCarga(){
		return pesoCarga
	}
	
	method pesoCarga(unPeso){
		pesoCarga = unPeso
	}
	
	method velocidadMaxima() = 60 - nivelDeterioro
	
	method recorrerRuta(extension, velocidad){
		nivelDeterioro += 0.max(velocidad - 45)
	}

}

