class Estudiante {
	var notas = []
	var materias
	
	method promedio() {
        return notas.sum() / notas.size()
    }

    method cantidadDeDesaprobados() {
        return notas.count({nota => nota < 6})
    }

    method esEjemplar() {
        return notas.all({nota => nota >= 8})
    }

    method pasarDeAnio() {
        materias.forEach({materia => materias.add(materia + "I")})
    }

    method recibirNota(nota) {
        notas.add(nota)
    }
}

const lucia = new Estudiante(notas = [6,8,8,6], materias = #{"Analisis matematico I", "Fisica II"})