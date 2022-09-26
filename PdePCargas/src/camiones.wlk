object camionDeVerduras {
	var cantidadDeCajas
	var kilometraje = 700000
	var pesoPorCaja = 50
	
	method velocidadMaxima() {
		return 80 - (self.pesoCarga() / 500) // self -> para enviar mensajes al mismo objeto
	}
	
	method pesoCarga() = cantidadDeCajas * pesoPorCaja // retorno en metodos de una sola linea
	
	method recorrer(kms, velocidad){
		kilometraje += kms
	}
}

object scanion5000 {
	const maxCapacidad = 5000
	var densidad
	
	method velocidadMaxima() = 140
	
	method pesoCarga() = densidad * maxCapacidad
	
	method recorrer(kms, velocidad){
		// no hace nada
	}
}

object camionCerealero {
	var nivelDeterioro = 0
	var pesoCarga
	
	method velocidadMaxima() = 60 - nivelDeterioro
	
	method pesoCarga() = return pesoCarga // getter
	
	method recorrer(kms, velocidad){
		nivelDeterioro += 0.max(velocidad - 45) // numero.max(otroNumero) -> retorna el mayos de dos numeros
	}
}