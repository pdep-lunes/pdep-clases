import pdepCargas.*

object puestoRutatlantica {

	method pasar(unCamion) {
		pdepCargas.cobrar(self.costo(unCamion))
		unCamion.recorrerRuta(400, self.velocidadQuePasa(unCamion))
	}

	method velocidadQuePasa(unCamion) {
		return unCamion.velocidadMaxima().min(75)
	}

	method costo(unCamion) {
		return 7000 + 100 * unCamion.pesoCarga() / 1000
	}

}