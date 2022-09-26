import pdepcargas.pdepCargas
import camiones.*

object rutatlantica {
	method pasar(unCamion) {
		pdepCargas.pagar(self.costo(unCamion))
		unCamion.recorrer(400, self.velocidadQuePasa(unCamion))
	}	
	
	method velocidadQuePasa(unCamion) = unCamion.velocidadMaxima().min(75)
	// unNumero.min(otroNumero) -> retorna el menor de los dos numeros
	
	method costo(unCamion) = 7000 + 100 * unCamion.pesoCarga() / 1000
}
