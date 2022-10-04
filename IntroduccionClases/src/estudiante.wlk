//Creación de Clase
class Estudiante { // Van en singular y empieza con Mayúscula
	const notas = [] // se crea una lista vacia para todas las instancias
	const materiasCursadas = []
	
	method promedioDeNotas() {
		return notas.sum() / notas.size()
	}
	
	method esEjemplar() {
		return notas.all({ unaNota => unaNota >= 8 }) // retorna true si todos los elementos cumplen
	}
	
	method cantidadDeExamenesDesaprobados() {
		return notas.count({ unaNota => unaNota < 6 })
	}
	
	method proximasMaterias(){
		return materiasCursadas.map({ unaMateria => unaMateria + "I" })
	}
	
	method agregarNota(unaNota) {
		notas.add(unaNota)
	}
}

class Oyente {
  method esEjemplar() { // interfaz compartida con Estudiante
    return true
  }
  
  method promedioDeNotas() {
    return 10
  }
  
  method turnoDisponible() {
    return "Noche"
  }
}

// Todo objeto no puede ser intancia de dos o más clases distintas
// No se puede cambiar la clase en tiempo de ejecución


// Creo nuevas instancias de la clase Estudiante y defino su estado
const lucia = new Estudiante(notas = [8, 8, 8, 8], materiasCursadas = ["Análisis Matemático I", "Física II"])
const juan  = new Estudiante(notas = [4, 7, 9, 9], materiasCursadas = ["Programación II", "Sistemas Operativos I", "Análisis Matemático I"])
const perla = new Estudiante(notas = [4, 7, 9, 9], materiasCursadas = ["Programación II", "Sistemas Operativos I", "Análisis Matemático I"])
const ingresante = new Estudiante() // instancias vacías
const otroIngresatne = new Estudiante() // instancias distintas aunque las dos esten vacias