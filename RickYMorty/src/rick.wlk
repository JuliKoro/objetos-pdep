import familiar.*

class Rick {
	var demencia
	var acompaniante
	
	method irseDeAventuras() {
		if(acompaniante.puedeIrseDeAventuras()) {
			acompaniante.irseDeAventurasCon(self)
		}
	}
	
	method enloquecer(unidades) {
		demencia += unidades
	}
	
	method tranquilizar(unidades) {
		demencia -= unidades
	}
	
}
