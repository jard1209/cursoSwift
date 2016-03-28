//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Velocidades: Int {
    case apagado = 0,
    velocidadBaja = 20,
    velocidadMedia = 50,
    velocidadAlta = 120
    
    init () {
        self = Velocidades.apagado
    }
}

class Auto {
    var velocidad: Velocidades
    
    init (velocidad: Velocidades){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (velocidad:Int, mensaje: String){
        var mensaje = ""
        if velocidad == Velocidades.apagado {
            velocidad = Velocidades.velocidadBaja
            mensaje = "Velocidad Baja"
        } else if velocidad == Velocidades.velocidadBaja {
            velocidad = Velocidades.velocidadMedia
            mensaje = "Velocidad Media"
        } else if velocidad == Velocidades.velocidadMedia {
            velocidad = Velocidades.velocidadAlta
            mensaje = "Velocidad Alta"
        } else if velocidad == Velocidades.velocidadAlta {
            velocidad = Velocidades.velocidadMedia
            mensaje = "Velocidad Media"
        }
        
        let resultado = (velocidad.rawValue, mensaje)
        return resultado
    }
}


var automovil = Auto(velocidad: Velocidades.apagado)

for var i = 0 ; i <= 20 ; i++ {
    var velocidadActual = automovil.cambioDeVelocidad ()
    print("\(velocidadActual.velocidad), \(velocidadActual.mensaje)")
}