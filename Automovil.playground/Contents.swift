//: Playground - noun: a place where people can play

import UIKit

//Velocimetro

import UIKit

enum Velocidades: Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        
        self = velocidadInicial
    
    }
    
}

class Auto {
    
    var velocidad : Velocidades
    
    init() {
    
        self.velocidad = Velocidades(velocidadInicial : .Apagado)
    
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
    
        if self.velocidad == .Apagado {
         
            self.velocidad = .VelocidadBaja
        
        }
        else if self.velocidad == .VelocidadBaja {
            
            self.velocidad = .VelocidadMedia
        
        }
        else if self.velocidad == .VelocidadMedia {
        
            self.velocidad =  .VelocidadAlta
        
        }
        else if self.velocidad == .VelocidadAlta {
            
            self.velocidad =  .VelocidadMedia
            
        }
    
        return (self.velocidad.rawValue, "\(self.velocidad)")
    
    }
    
}

var automovil = Auto()
print("\(automovil.velocidad.rawValue), \(automovil.velocidad)")

for i in 1...20 {
    
    var x = automovil.cambioDeVelocidad()
    print("\(x.actual), \(x.velocidadEnCadena)")

}