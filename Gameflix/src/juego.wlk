class Juego {
	const nombre
	var precio
	const categoria
	
	method esDeCategoria(unaCategoria) {
		return unaCategoria == categoria
	}
	
	method seLlama(unNombre) {
		return unNombre == nombre
	}
	
	method esBarato() {
		return precio < 30
	}
	
}
	
class JuegoViolento inherits Juego { // Solución por Herencia
	method afectarA(unUsuario, unasHoras) {
		unUsuario.reducuirHumor(10 * unasHoras)
	}		
}
	
class JuegoMOBA inherits Juego {
	method afectarA(unUsuario, unasHoras) {
		unUsuario.comprarSkins()
	}	
}

class JuegoDeTerror inherits Juego {
	method afectarA(unUsuario, unasHoras) {
		unUsuario.tirarTodoAlCarajo()
	}			
}

class JuegoDeEstrategia inherits Juego {
	method afectarA(unUsuario, unasHoras) {
		unUsuario.aumentarHumor(5 * unasHoras)
	}		
}