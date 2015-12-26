//: Velocimetro Digital
//: Juan Enrique Hernández Martínez

import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        
        switch(velocidad){
        case Velocidades.Apagado:
            let tupla = (velocidad.rawValue , "Apagado")
            velocidad = Velocidades.VelocidadBaja
            return tupla
        case Velocidades.VelocidadBaja:
            let tupla = (velocidad.rawValue , "Velocidad baja")
            velocidad = Velocidades.VelocidadMedia
            return tupla
        case Velocidades.VelocidadMedia:
            let tupla = (velocidad.rawValue , "Velocidad media")
            velocidad = Velocidades.VelocidadAlta
            return tupla
        case Velocidades.VelocidadAlta:
            let tupla = (velocidad.rawValue , "Velocidad alta")
            velocidad = Velocidades.VelocidadMedia
            return tupla
        }
    }
}


var auto: Auto = Auto.init()
//auto.velocidad

for i in 1...20 {
    print("\(i). \(auto.cambioDeVelocidad())")
}
