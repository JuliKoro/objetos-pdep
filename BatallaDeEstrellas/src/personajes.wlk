object pamela {
	var energia = 6000
	const inventario = ["Algodon", "Agua oxigenada", "Cinta de papel", "Cinta de papel"]
	// la lista es const, aunque sus elementos (referencias a otros objetos) pueden cambiar
	method gritoDeVictoria() = "¡Aca paso la Pamela!"
	
	method energia() = energia
	
	method tieneEnergia() = energia > 0
	
	method cantidadDeElementos() = inventario.size()
	
	method ultimoElemento() = inventario.last() // lista.last() -> retorna el último elemento de una lista
	
	method sumarElemento(unElemento) {
		inventario.add(unElemento)
	}
	
	method quitarElemento(unElemento) {
		inventario.remove(unElemento)
	}
	
	method lucharContra(unPersonaje) {
		energia += 400
	}
	
	method lucharContraEquipo(equipo) {
		equipo.forEach({unPersonaje => self.lucharContra(unPersonaje)}) // pamela lucha contra todos los del otro equipo
	}
	
	method perderEnergia(danio) {
		energia -= danio
	}
}

object pocardo {
	var energia = 5600
	const inventario = ["Guitarra", "Curitas", "Cotonetes"]
	
	method gritoDeVictoria() = "¡Siente el poder de la musica!"
	
	method energia() = energia
	
	method tieneEnergia() = energia > 0
	
	method cantidadDeElementos() = inventario.size()
	
	method ultimoElemento() = inventario.last()
	
	method sumarElemento(unElemento) {
		inventario.add(unElemento)
	}
	
	method quitarElemento(unElemento) {
		inventario.remove(unElemento)
	}
	
	method lucharContra(unPersonaje) {
		energia += 500
	}
	
	method lucharContraEquipo(equipo) {
		equipo.forEach({unPersonaje => self.lucharContra(unPersonaje)})
	}
	
	method perderEnergia(danio) {
		energia -= danio
	}
}
	
object tulipan {
	var energia = 8400
	const inventario = ["Rastrillo", "Maceta", "Maceta", "Manguera"]
	
	method gritoDeVictoria() = "¡Hora de cuidar las plantas!"
	
	method energia() = energia
	
	method tieneEnergia() = energia > 0
	
	method cantidadDeElementos() = inventario.size()
	
	method ultimoElemento() = inventario.last()
	
	method sumarElemento(unElemento) {
		inventario.add(unElemento)
	}
	
	method quitarElemento(unElemento) {
		inventario.remove(unElemento)
	}
	
	method lucharContra(unPersonaje) {
		unPersonaje.perderEnergia(unPersonaje.energia() * 0.5)
	}
	
	method lucharContraEquipo(equipo) {
		equipo.forEach({unPersonaje => self.lucharContra(unPersonaje)})
	}
	
	method perderEnergia(danio) {
		energia -= danio
	}
}

object primardo {
	var energia = 7500
	const inventario = ["Mascara", "Short de lucha"]
	
	method gritoDeVictoria() = "¡¡Soy el mejoooooor!!"
	
	method energia() = energia
	
	method tieneEnergia() = energia > 0
	
	method cantidadDeElementos() = inventario.size()
	
	method ultimoElemento() = inventario.last()
	
	method sumarElemento(unElemento) {
		inventario.add(unElemento)
	}
	
	method quitarElemento(unElemento) {
		inventario.remove(unElemento)
	}
	
	method lucharContra(unPersonaje) {
		unPersonaje.perderEnergia(unPersonaje.energia() * 0.7)
	}
	
	method lucharContraEquipo(equipo) {
		equipo.forEach({unPersonaje => self.lucharContra(unPersonaje)})
	}
	
	method perderEnergia(danio) {
		energia -= danio
	}
}

object toro {
	var energia = 7800
	const inventario = #{} // es un set para poder robar elementos no repetidos
	
	method gritoDeVictoria() =  "¡No se metan con el toro!"
	
	method energia() = energia
	
	method tieneEnergia() = energia > 0
	
	method cantidadDeElementos() = inventario.size()
	
	method ultimoElemento() = inventario.asList().last() // lo convierto en lista primero
	
	method sumarElemento(unElemento) {
		inventario.add(unElemento)
	}
	
	method quitarElemento(unElemento) {
		inventario.remove(unElemento)
	}
	
	method lucharContra(unPersonaje) {
		unPersonaje.perderEnergia(unPersonaje.cantidadDeElementos() * 200)
		self.sumarElemento(unPersonaje.ultimoElemento())
		unPersonaje.quitarElemento(unPersonaje.ultimoElemento())
	}
	
	method lucharContraEquipo(equipo) {
		equipo.forEach({unPersonaje => self.lucharContra(unPersonaje)})
	}
	
	method perderEnergia(danio) {
		energia -= danio
	}
}