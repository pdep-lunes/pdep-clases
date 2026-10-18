class Escapista{
    var maestria
    const salasGanadas = []
    var saldo

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
}

object amateur{
    method puedeSalir(escapista, sala) = escapista.hizoMuchasSalas() && !sala.esDificil()

    method proximoNivel() = profesional
}

object profesional{
    method puedeSalir(escapista,sala) = true

    method proximoNivel()= self 
}

