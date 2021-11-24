//
//  Datos.swift
//  FindPet
//
//  Created by Luis Humberto Martinez Echegaray on 23/11/21.
//

import Foundation

struct Perro {
    var Nombre : String
    var Sexo : String // true para macho, false para hembra
    var Edad : Int
    var Raza : String
    var Tamaño : String
    var Características : String
    var Descripcion : String
    var Motivo : String
}




//Creación de las instancias
let perrito1 = Perro(Nombre: "Pulce", Sexo: "Hembra", Edad: 4, Raza: "Pastor belga", Tamaño: "mediano", Características: "Pelaje color miel", Descripcion: "Es una perra juguetona", Motivo: "Soy muy grandota para la casa en la que vivo")
    
let perrito2 = Perro(Nombre: "Scot", Sexo: "Macho", Edad: 7, Raza: "Bichon Boloñez", Tamaño: "Pequeño", Características: "Pelaje blanco y esponjoso, nariz negra", Descripcion: "Scot es un perro amable y cariñoso, muy atento a su alrededor", Motivo: "Me hago mucho del baño")

let perrito3 = Perro(Nombre: "Bali", Sexo: "Hembra", Edad: 10, Raza: "Chihuahua", Tamaño: "Pequeña", Características: "Pelaje color café, se le sale la lengua", Descripcion: "Es una perrita muy bonita, chiquita para estar en cualquier lugar", Motivo: "Soy muy miona y cagona")

var perrosAdoptados : [Perro] = [perrito1,perrito2,perrito3]




