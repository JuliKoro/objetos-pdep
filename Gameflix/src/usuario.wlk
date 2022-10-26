class Usuario {
	var suscripcion
	
	method suscripcion(unaSuscripcion) {
		suscripcion = unaSuscripcion
	}
	
	method puedeJugar(unJuego) {
		return suscripcion.permiteJugar(unJuego)
	}
}

