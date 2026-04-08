object poroto {
	var edad = 4
	var energia = 100
	
	method jugar() {
		energia -= 20
	}
	
	method energia() {
		return energia
	}
	
	method energia(nuevaEnergia) {
		energia = nuevaEnergia
	}
}

object sally {
  var energia = 100
  var edad = 4

  method jugar() {
    energia = energia - 20
  }
}
