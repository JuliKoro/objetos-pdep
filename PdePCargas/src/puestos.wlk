import pdepcargas.pdepCargas
import camiones.*

object rutatlantica {
	method pasar(unCamion) { // No debe ser responsable de todo (abstacción de lógica)
		pdepCargas.pagar(self.costo(unCamion))
		unCamion.recorrer(400, self.velocidadQuePasa(unCamion))
		// el mensaje unCamion.recorrer(kms, velocidad) es compatible con todos los camiones 
		// gracias al polimorfismo
	}	
	
	// delegamos en otros métodos para que pasar() no sea responsable de todo
	method velocidadQuePasa(unCamion) = unCamion.velocidadMaxima().min(75)
	// unNumero.min(otroNumero) -> retorna el menor de los dos numeros
	
	method costo(unCamion) = 7000 + 100 * unCamion.pesoCarga() / 1000
}
