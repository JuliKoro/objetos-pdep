object premium {
	method permiteJugar(unJuego) {
		return true
	}
}

object base {
	method permiteJugar(unJuego) {
		return unJuego.esBarato()
	}
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
}

object infantil inherits SuscripcionCategorica {
	override method categoria() {
		return "Infantil"
	}
}
