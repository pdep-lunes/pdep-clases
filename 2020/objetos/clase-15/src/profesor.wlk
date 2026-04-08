import estudiantes.*

object profesor {
    var cfd = 3
    var estudiantes = #{
    	lucia,
    	new Estudiante(notas = [4,7,9,9], materias = #{"Analisis matematico I", "SO I", "Programacion III"})
    }

    method estudiantesEjemplares() {
        return estudiantes.filter({estudiante => estudiante.esEjemplar()})
    }

    method promedioDelCurso() {
        return estudiantes.sum({estudiante => estudiante.promedio()}) / estudiantes.size()
    }

    method evaluar() {
        var notaSorpresa = 10.min(self.promedioDelCurso() + cfd)
        estudiantes.forEach({estudiante => estudiante.recibirNota(notaSorpresa)})
    }
}