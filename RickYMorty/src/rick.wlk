import familiar.*
import error.*

class Rick {
	var demencia
	var acompaniante
	
	method irseDeAventuras() { // No hace falta un if para q rompa el programa y lance una excepcion
		try {
			acompaniante.irseDeAventurasCon(self)
		} catch e : ExceptionIrseDeAventura {
			demencia += 10
		}
			
	}
	
	method enloquecer(unidades) {
		if (demencia + unidades > 100)
			throw new EstoyReDementeException(message = "¡Estoy re loco, no venga nadie conmigo!")
		demencia += unidades
	}
	
	method tranquilizar(unidades) {
		demencia -= unidades
	}
	
}
