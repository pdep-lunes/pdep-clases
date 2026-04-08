import mascota.*

object billy {
  var edad = 12
  const comidaFavorita = "asado"
  var energia = 200
  var mascota = poroto

  method jugarConMascota() {
    energia -= 50
    mascota.jugar()
  }

  method mascota() {
    return mascota;
  }
}

object mandy {
   var edad = 15
   const comidaFavorita = "milanesa"
   var energia = 200
   var mascota = sally

  method jugarConMascota() {
    energia -= 30
    mascota.jugar()
  }
 
  method mascota() {
    return mascota;
  }
}

