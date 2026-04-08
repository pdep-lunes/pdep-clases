object batman {
	var identidadSecreta = "Bruce Wayne"
	
	/*method identidadSecreta(unaIdentidad) {
		identidadSecreta = unaIdentidad
	}*/
	
	method identidadSecreta() {
		return identidadSecreta
	}
	
	method tieneMuchoPoder() {
		return true
	}
	
	method latinoamericanizar() {
		//self.identidadSecreta("Bruno Diaz") -> no hace falta porque ya estamos dentro del objeto
		identidadSecreta = "Bruno Diaz"
		
	}
}

object elZorro {
	var identidadSecreta = "Don Diego De La Vega"
	var habilidades = ["esgrima", "equitacion", "lenguaje con señas", "latigo"]
	
	method identidadSecreta() {
		return identidadSecreta
	}
	
	method tieneMuchoPoder() {
		return habilidades.size() > 4
	}
	
	method latinoamericanizar() {
		
	}
	
	method aprenderHabilidad(unaHabilidad) {
		habilidades.add(unaHabilidad)
	}
	
	method aprenderHabilidades(unasHabilidades) {
		habilidades.addAll(unasHabilidades)
	}
}

object mujerMaravilla {
	var identidadSecreta = "Diana Prince"
	var armasDeCombate = ["lazo de la verdad", "brazaletes", "espada", "avion invisible"]
	
	method identidadSecreta() {
		return identidadSecreta
	}
	
	method tieneMuchoPoder() {
		return armasDeCombate.size() > 2
	}
	
	method latinoamericanizar() {
		armasDeCombate.remove("avion invisible")
		armasDeCombate.add("ford taunus bordo invisible")
	}
	method armasDeCombate() {
		return armasDeCombate
	}
}









