object premium {
	method permiteJugar(unJuego) {
		return true
	}
	
	method costo() = 50
}

object base {
	method permiteJugar(unJuego) {
		return unJuego.esBarato()
	}
	
	method costo() = 25
}

class SuscripcionCategorica {
	method permiteJugar(unJuego) {
		return unJuego.esDeCategoria(self.categoria())
	}
	
	method categoria()
	
}

object prueba inherits SuscripcionCategorica {
	override method categoria() {
		return "Demo"
	}
	
	method costo() = 0
}

object infantil inherits SuscripcionCategorica {
	override method categoria() {
		return "Infantil"
	}
	
	method costo() = 10
}
