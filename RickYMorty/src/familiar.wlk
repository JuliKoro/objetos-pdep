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
		if (self.esMiercoles()) super(unRick) // Si es miercoles, hace lo mismo que Beth
	}
}

object Jerry { // es un objeto único
	
	method puedeIrDeAventura() {
		return false
	}
	
	method irDeAventurasCon(unRick){
		
	}
	
}