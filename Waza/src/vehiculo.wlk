class Vehiculo {
	const property capacidadTanque
	var property combustible
	var velocidadPromedio
	
	method recorrerDistancia(km){
		combustible -= 2
	}
	
	method combustibleFaltante() = capacidadTanque - combustible
	
	method esEcologico()
	
}

class Camioneta inherits Vehiculo {
	override method esEcologico(){
		return false
	}
}

class Deportivo inherits Vehiculo {
	
}

class Familiar inherits Vehiculo {
	override method esEcologico(){
		return true
	}
}