import heroes.*

object agrupacionSuperheroica {
	// lista: 
	//var integrantes = [batman, elZorro, mujerMaravilla]
	//set/conjunto:
	var integrantes = #{batman, elZorro, mujerMaravilla}
	
	method integrantes(){
		return integrantes
	}
	
	method agregarSuperheroe(unSuperheroe) {
		integrantes.add(unSuperheroe)
	}
	
	method echarSuperheroe(unSuperheroe) {
		integrantes.remove(unSuperheroe)
	}
	
	method integrantesSinMuchoPoder() {
		return integrantes.filter({integrante => !integrante.tieneMuchoPoder()})
	}
	
	method identidadesSecretas() {
		return integrantes.map({integrante => integrante.identidadSecreta()})
	}
	
	method latinoamericanizar() {
		integrantes.forEach({integrante => integrante.latinoamericanizar()})
	}
	
	method cantidadDeIntegrantes() {
		return integrantes.size()
	}
}