object poroto {
	//atributos
	var edad = 4
	var energia = 100 
	
	//métodos
	method jugar() {
		energia = (energia - 20).max(0)
	}
	
	//accessors (sólo los creamos cuando los necesitamos usar)
	//getter
	method energia() {
		return energia
	}
	//setter
	method energia(unaEnergia) {
		energia = unaEnergia
	}
}

object sally {
	//atributos
	var edad = 4
	var energia = 100 
	
	//métodos
	method jugar() {
		energia = (energia - 20).max(0)
	}
	
	//accessors (sólo los creamos cuando los necesitamos usar)
	//getter
	method energia() {
		return energia
	}
	//setter
	method energia(unaEnergia) {
		energia = unaEnergia
	}
}















