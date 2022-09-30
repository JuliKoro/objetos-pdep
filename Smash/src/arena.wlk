import luchadores.*

object arena {
	
	var luchadores = #{}
	
	method luchadores() = luchadores
	
	method agregarLuchador(unLuchador) {
		luchadores.add(unLuchador) // agrega la referencia dell objeto unLuchador desde el archivo de luchadores.wlk
	}
	
	method echarLuchador(unLuchador) {
		luchadores.remove(unLuchador) // quita la referencia dell objeto unLuchador desde el archivo de luchadores.wlk
	}
	
	method nombresDeLosLuchadores() {
		return luchadores.map({unLuchador => unLuchador.nombre()})
		// a c/u de los luchadores q hay en la coleccion le aplicamos el mensaje pidiendo el nombre
	}
	
	method esAmateur() {
		return self.luchadoresDebiles().size() > (self.cantidadDeLuchadores() / 2)
	}
	
	method luchadoresDebiles() {
		return luchadores.filter({unLuchador => !unLuchador.tieneMuchoPoder()})
		// filtra de todos los luchadores del set a los que NO (!) tienen mucho poder (débiles)
	}
	
	method cantidadDeLuchadores() {
		return luchadores.size()
	}
	
	method descansarTodosLosLuchadores() {
		luchadores.forEach({unLuchador => unLuchador.descansar()})
	}
	
	method combateSimple() {
		luchadores.forEach({unLuchador => self.atacarAlgunRival(unLuchador)})
	}
	
	method rivales(unLuchador) {
		return luchadores.filter({otroLuchador => otroLuchador != unLuchador})
	}
	
	method algunRival(unLuchador) {
		return self.rivales(unLuchador).asList().anyOne() // lo hacemos con lista para q retorne distinto cada vez q lo llamo
	}
	
	method atacarAlgunRival(unLuchador) {
		self.algunRival(unLuchador).recibirAtaque(unLuchador.danioAtaqueSimple())
	}

	method luchadorGanador(){
		return luchadores.min({unLuchador => unLuchador.agotamiento()})
	}	
}
