import perros.* // importa todos los objetos del archivo perros.wlk
// import perros.poroto -> importa el objeto poroto del archivo perros.wlk

object billy { 
	// esatdo inicial -> valores iniciales
	const nombre = "Billy"
	var edad = 12
	var energia = 200
	var compania = poroto // relaciona a billy con poroto (referencia)
	
  	method jugar() {
    	energia -= 50
    	compania.jugar() // juega la compania asignada (poroto)
    	// billy le manda un mensaje su compania
  	}

  	method energia() { //getter
    	return energia
  	}

  	method compania() { //getter
    	return compania
  	}
}

object mandy {
	const nombre = "Mandy"
	var edad = 15
 	var energia = 200
  	var compania = poroto

  	method jugar() {
    	energia -= 30
    	compania.jugar()
    	compania.jugar()
  	}

  	method compania() {
    	return compania
  	}
}
