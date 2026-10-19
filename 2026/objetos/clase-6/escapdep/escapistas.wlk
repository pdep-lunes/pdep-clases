class Escapista{
    var maestria
    const salasGanadas = []
    var saldo
    var manija

    method saldo() = saldo

    method hizoMuchasSalas() = salasGanadas.size() > 6

    method puedeSalir(sala){
        return maestria.puedeSalir(self, sala)
    }

    method aumentarNivelDeMaestria() {
        if(self.hizoMuchasSalas()){
            maestria = maestria.proximoNivel()
        }
    }
    method nombresDeSalasGanadas()= salasGanadas.asSet().map({sala=> sala.nombre()})

    method salir(sala)= salasGanadas.add(sala)

    method puedoPagar(costo) = saldo > costo

    method pagar(costo) {
        saldo=-costo
    }

    method manijearseCon(sala) {
        try {
            manija += sala.hype()
        } catch e : NoPuedeSerProbadaException {
            manija += manija * 10
        }
    }
}

object amateur{
    method puedeSalir(escapista, sala) = escapista.hizoMuchasSalas() && !sala.esDificil()

    method proximoNivel() = profesional
}

object profesional{
    method puedeSalir(escapista,sala) = true

    method proximoNivel()= self 
}

