import noPuedenPagar.NoPuedenPagarException

class Grupo{
    const escapistas = #{}

    method puedeSalir()= escapistas.any({escapista =>escapista.puedeSalir()})

    method escapar(sala){
        self.pagar(sala)
        self.salir(sala)
    }

    method costoPorPersona(sala)=sala.precioFinal()/escapistas.size()

    method cadaUnoPuedePagarLoSuyo(sala){
        return escapistas.all({escapista=>escapista.puedePagar(self.costoPorPersona(sala))})
    }

    method algunosCubrenElTotal(sala){
        return escapistas.sum({escapista=>escapista.saldo()}) >= sala.precioFinal()
    }

    method puedenPagar(sala){
        return self.cadaUnoPuedePagarLoSuyo(sala) || self.algunosCubrenElTotal(sala)
    }  

    method pagar(sala){
        if(!self.puedenPagar(sala)){
            throw new NoPuedenPagarException()
        }else{
            escapistas.forEach({escapista => escapista.pagar(self.costoPorPersona(sala))})
        }
    }

    method salir(sala){
        escapistas.forEach({escapistas=> escapistas.salir(sala)})
    }

}