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