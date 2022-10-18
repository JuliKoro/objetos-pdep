// Clase abstracta -> NUNCA la instanciamos
class Personaje { // superclase
	
	var energia
	const inventario // la lista es const, aunque sus elementos (referencias a otros objetos) pueden cambiar
	const energiaDeLucha
	const gritoDeVictoria
	
	// método abstracto -> implica q todas las subclases deben de definirlo
	method lucharContra(unPersonaje) // no tiene comportamiento
		
	method gritoDeVictoria() = gritoDeVictoria
	
	method energia() = energia
	
	method tieneEnergia() = energia > 0
	
	method cantidadDeElementos() = inventario.size()
	
	method ultimoElemento() = inventario.last()  // lista.last() -> retorna el último elemento de una lista
	
	method sumarElemento(unElemento) {
		inventario.add(unElemento)
	}
	
	method quitarElemento(unElemento) { 
		inventario.remove(unElemento)
	}
	
	// método concreto -> tiene una lógica proporcionada
	method lucharContraEquipo(equipo) { // self lucha contra todos los del otro equipo
		equipo.forEach({unPersonaje => self.lucharContra(unPersonaje)})
	}
	
	method perderEnergia(danio) {
		energia -= danio
	}
}

// Clase concreta -> SI las instanciamos
class Sanador inherits Personaje { // Sanador hereda a Personaje
	
	override method lucharContra(unPersonaje) { // override -> redefino para que herede el método abstracto de Personaje
		energia += energiaDeLucha // le definimos el comportamiento para que sea un método concreto
	}
}

class UltraSanador inherits Sanador {
	
	override method lucharContraEquipo(equipo) {
		super(equipo) // llama al mismo método pero de la superclase y le pasa equipo
		energia += 1000
	}
}

class Atacante inherits Personaje { // Atacante es subclase de Personaje
	
	override method lucharContra(unPersonaje) {
		unPersonaje.perderEnergia(unPersonaje.energia() * energiaDeLucha)
	}
}

const pamela = new Sanador(
	energia = 6000,
	inventario = ["Algodon", "Agua oxigenada", "Cinta de papel", "Cinta de papel"],
	energiaDeLucha = 400,
	gritoDeVictoria = "¡Aca paso la Pamela!"
)

const pocardo = new Sanador(
	energia = 5600,
	inventario = ["Guitarra", "Curitas", "Cotonetes"],
	energiaDeLucha = 500,
	gritoDeVictoria = "¡Siente el poder de la musica!"
)

const tulipan = new Atacante(
	energia = 8400,
	inventario = ["Rastrillo", "Maceta", "Maceta", "Manguera"],
	energiaDeLucha = 0.5,
	gritoDeVictoria = "¡Hora de cuidar las plantas!"
)
	
const primardo = new Atacante(
	energia = 7500,
	inventario = ["Mascara", "Short de lucha"],
	energiaDeLucha = 0.7,
	gritoDeVictoria = "¡¡Soy el mejoooooor!!"
)

const lordByron = new UltraSanador(
	energia = 4000,
	inventario = ["pócimas", "jeringas"],
	energiaDeLucha = 200,
	gritoDeVictoria = "Necesito veneno de serpientes"
)

object toro inherits Personaje(
	energia = 7800,
	inventario = #{}, // es un set para poder robar elementos no repetidos
	energiaDeLucha = 200,
	gritoDeVictoria = "¡No se metan con el toro!"
) {
	
	override method lucharContra(unPersonaje) {
		unPersonaje.perderEnergia(unPersonaje.cantidadDeElementos() * 200)
		self.sumarElemento(unPersonaje.ultimoElemento())
		unPersonaje.quitarElemento(unPersonaje.ultimoElemento())
	}
	
	// redefinimos el método concreto
	override method ultimoElemento() = inventario.asList().last() // lo convierto en lista primero
}