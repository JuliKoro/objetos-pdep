object gameflix {
	const juegos = #{}
	const usuarios = #{}
	
	method agregarJuego(unJuego) {
		juegos.add(unJuego)
	}
	
	method juegosDeCategoria(unaCategoria) {
		return juegos.filter({ unJuego => unJuego.esDeCategoria(unaCategoria) })
	}

	method juegoQueSeLlama(unNombre) {
		return juegos.findOrElse( // Busca y si no encuentra, ejecuta el otro bloque (Excepción)
			{ unJuego => unJuego.seLlama(unNombre) }, 
			{ throw new Exception(message = "No existe un juego con ese nombre.") }
		)
	}
	
	method juegoAlAzar() {
		return juegos.asList().anyOne()
	}
	
	method cobrar() {
		usuarios.forEach({ usuario => usuario.pagarSuscripcion() })
	}
}
