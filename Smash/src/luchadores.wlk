// en todos los personajes se repiten metodos para favorecer el polimorfismo
object mario {
	const nombre = "Mario"
	var agotamiento = 0
	var ataque = "Salto"
	
	method nombre() = nombre
	
	method agotamiento() = agotamiento
	
	method recibirAtaque(unDanio) {
		agotamiento += unDanio
	}
	
	method descansar() {
		agotamiento = 0
	}
	
	method evolucionar() {
		ataque = "Bola de Fuego"
	}
	
	method danioAtaqueSimple() {
		return ataque.size() //retorna la cantidad de elementos en una coleccion (tamaño del string en este caso)
	}
	
	method tieneMuchoPoder() = true
}

object link {
	const nombre = "Link"
	var agotamiento = 0
	var armas = #{"Espada del heroe", "Escudo Hyliano", "Arco"} // conjunto/set -> no tiene orden y no hay repeticiones
	//var numeros1 = [1, 2, 3, 4, 5] // lista -> tienen un orden y pueden haber repeticiones
	
	method nombre() = nombre
	
	method agotamiento() = agotamiento
	
	method armas() = armas
	
	method recibirAtaque(unDanio) {
		agotamiento += unDanio
	}
	
	method descansar() {
		agotamiento = 0
	}
	
	method evolucionar() {
		self.perderArma("Espada del heroe")
		self.obtenerArma("Espada Maestra")
		self.obtenerArma("Gancho")
		self.obtenerArma("Bombas")
		
	}
	
	method obtenerArma(unArma) {
		armas.add(unArma)
	}
	
	method perderArma(unArma) {
		armas.remove(unArma)
	}
	
	method danioAtaqueSimple() {
		return armas.size() * 2
	}
	
	method tieneMuchoPoder() {
		return armas.size() > 3
	}
}

object sora {
	const nombre = "Sora"
	var agotamiento = 0
	var comandos = #{"Pyro", "Hielo", "Electro"}
	var nivel = 1
	
	method nombre() = nombre
	
	method agotamiento() = agotamiento
	
	method comandos() = comandos
	
	method nivel() = nivel
	
	method recibirAtaque(unDanio) {
		agotamiento += unDanio
	}
	
	method descansar() {
		agotamiento = 0
	}
	
	method evolucionar() {
		nivel++ //suma de a uno una variable
		comandos = comandos.map({unComando => unComando + "+"}).asSet() //retorna el mapeo en forma de set/conjunto
	}
	
	method danioAtaqueSimple() {
		return comandos.size() * nivel
	}
	
	method tieneMuchoPoder() {
		return comandos.contains("Pyro++") // retorna true si el set contiene ese string
	}
}