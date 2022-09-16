// Modelado de objeto
object poroto {
  // atributos / estado
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

object sally {
  // atributos / estado
  const raza = "Salchicha"
  var energia = 500
  
  // Métodos que tienen efecto
  // Convención de nombre: verbos en infinitivo
  method jugar() {
    energia = energia - 20
    //energia -= 20
  }
  
  // Métodos que devuelven
  // Convención de nombre: sustantivos
  method ladrido() {
    return "Wow!"
  }
  
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

// objeto.mensaje()