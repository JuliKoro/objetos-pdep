import vehiculo.*
import error.*

class Usuario {
	const nombreDeUsuario
	const dni
	var property dineroEnCuenta
	var vehiculoAsociado
	var multas = []
	
	method registrarVehiculo(unVehiculo){
		vehiculoAsociado = unVehiculo
	}
	
	method recorrerDistancia(){
		vehiculoAsociado.consumirCombustible()
	}
	
	method comprarCombustible(unosLitros){
		if (dineroEnCuenta < self.costoCombstible(unosLitros)){
			throw new ExcepcionUsuario(message = "No alcanza el dienero para pagar")
		}
		dineroEnCuenta -= self.costoCombstible(unosLitros)
	}
	
	method cuantoRecargar(unosLitros){
		return vehiculoAsociado.combstibleFaltante().min(unosLitros)
	}
	
	method costoCombstible(unosLitros){
		return self.cuantoRecargar(unosLitros) * 40
	}
	
	method pagarTodasLasMultas(){
		multas.forEach({ unaMulta => self.pagarMulta(unaMulta) })
	}
	
	method pagarMulta(unaMulta){
		if (dineroEnCuenta < unaMulta.costo()){
			throw new ExcepcionUsuario(message = "No alcanza el dienero para pagar")	
		}
		dineroEnCuenta -= unaMulta.costo()
		multas.remove(unaMulta)
	}
}

class Multa {
	const property costo
	var pago = false
	
	method cobrarMulta(unUsuario){
		unUsuario.pagarMulta(self)
		pago = true
	}
}
