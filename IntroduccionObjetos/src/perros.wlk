// Modelado de objeto
object poroto {
  // atributos / estado
  // estado inicial
  const raza = "Salchicha"
  var energia = 500
  
// Métodos que tienen efecto
// Convención de nombre: verbos en infinitivo
  method jugar() {
    energia -= 20 //energia = energia - 20
  }
  
// Métodos que devuelven
// Convención de nombre: sustantivos
  method ladrido() {
    return "Wow!"
  }
  
// accesors

  // getter
  method energia() {
    return energia
  }
  
  // setter
  method energia(unaEnergia) {
    energia = unaEnergia
  }
  
  method raza() {
    return raza
  }
}

object sally { // otro objeto
  // atributos / estado
  const raza = "Salchicha"
  var energia = 500
  
  method jugar() {
    energia -= 20
    //
  }
  
  method ladrido() {
    return "Wow!"
  }
  
  method energia() { // getter
    return energia
  }
  
  method energia(unaEnergia) { // setter
    energia = unaEnergia
  }
  
  method raza() {
    return raza
  }
}

// objeto.mensaje() -> referencia.mensaje()
// == -> comparo por igualdad
// === -> comparo por identidad