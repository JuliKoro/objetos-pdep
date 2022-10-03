import estudiante.*

object docente {
	var cfd = 3 // Coeficiente de Felicidad Docente
	var estudiantes = #{lucia, juan, perla}
	
	method estudianesEjemplares() {
		return estudiantes.filter({ unEstudiante => unEstudiante.esEjemplar() })
	}
	
	method promedioDelCurso() {
		return estudiantes.sum({ unEstudiante => unEstudiante.promedioDeNotas / estudiantes.size() })
	}
	method evaluarEstudiantes() {
		estudiantes.forEach({ estudiante => estudiante.agregarNota(self.notaDelExamenSorpresa()) })
	}
	
	method notaDelExamenSorpresa() {
		return cfd + self.promedioDelCurso()
	}
}
