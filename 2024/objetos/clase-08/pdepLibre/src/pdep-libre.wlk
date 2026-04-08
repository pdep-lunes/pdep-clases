import usuario.Usuario

object pdepLibre {
  const productos = []
  const usuarios = #{}

  method penalizarMorosos(){
    self.usuariosMorosos().forEach({ unUsuario => unUsuario.penalizar() })
  }

  method usuariosMorosos() = usuarios.filter({ unUsuario => unUsuario.esMoroso() })

  method eliminarCuponesUsadosDeUsuarios(){
    usuarios.forEach({ unUsuario => unUsuario.eliminarCuponesUsados() })
  }

  method nombresDeProductosDeOferta(){
    return productos.map({ unProducto => unProducto.nombreEnOFerta() })
  }

  method actualizarNivelDeUsuarios() {
    usuarios.forEach({ unUsuario => unUsuario.actualizarNivel() })
  }
}