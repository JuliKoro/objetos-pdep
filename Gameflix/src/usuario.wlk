import suscripcion.prueba
import suscripcion.infantil

class Usuario {
	var suscripcion // Solución por composición
	var plataEnCuenta
	var humor
	
	method actualizarSuscripcion(unaSuscripcion) {
		suscripcion = unaSuscripcion
	}
	
	method puedeJugar(unJuego) {
		return suscripcion.permiteJugar(unJuego)
	}
	
	method pagarSuscripcion() {
		if(self.meAlcanzaParaPagar(suscripcion.costo())) { // condicional en Wollok
			self.actualizarSuscripcion(prueba)
		} else {
			plataEnCuenta -= suscripcion.costo()
		}
	}
	
	method meAlcanzaParaPagar(unaCantidad) {
		return plataEnCuenta < unaCantidad
	}
	
	method jugar(unJuego, unasHoras) {
		if(!self.puedeJugar(unJuego)) throw new Exception(message = "No puedo jugar este juego.")
		unJuego.afectarA(self, unasHoras)
	}
	
	method reducuirHumor(unaCantidad) {
		humor -= unaCantidad
	}
	
	method comprarSkins() {
		if(self.meAlcanzaParaPagar(30)) throw new Exception(message = "No me alcnza la plata")
		plataEnCuenta -= 30
	}
	
	method tirarTodoAlCarajo() {
		self.actualizarSuscripcion(infantil)
	}
	
	method aumentarHumor(unaCantidad) {
		humor += unaCantidad
	}
}

