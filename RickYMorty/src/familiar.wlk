import error.* // importo archivo de Excepciones

class Morty {
	var saludMental
	
	method puedeIrDeAventura() {
		return true
	}
	
	method irDeAventuraCon(unRick) {
		saludMental -= 30
		unRick.enloquecer(50)
	}
}

class Beth {
	var afectoPorRick
	
	method puedeIrDeAventura() {
		return true
	}
	
	method irDeAventuraCon(unRick) {
		afectoPorRick += 10
		unRick.tranquilizar(20)
	}
}

class Summer inherits Beth {
	method esMiercoles() {
		return new Date().dayOfWeek() == wednesday
	}
	
	override method irDeAventuraCon(unRick) {
		if (!self.esMiercoles()) self.error("Me puedo ir de aveturas solo los miercoles") // excepcion de nuestro dominio
		
		super(unRick) // Si es miercoles, hace lo mismo que Beth
	}
}

object jerry { // es un objeto único
	
	method puedeIrDeAventura() {
		return false
	}
	
	method irDeAventurasCon(unRick){
		throw new ExceptionIrseDeAventura (message = "Soy muy tonto y no puedo irme de aventura") // lanzo una instancia de mi Excepcion personalizada
	}
	
}