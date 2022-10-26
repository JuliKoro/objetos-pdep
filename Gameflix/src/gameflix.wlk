object gameflix {
	var juegos = #{}
	
	method juegosDeCategoria(unaCategoria) {
		return juegos.filter({ unJuego => unJuego.esDeCategoria(unaCategoria) })
	}
	
	
	method buscarPorNombre(unNombre) {
		
	}
	
	method recomendacionAlAzar() {
		
	}
	
	
}
