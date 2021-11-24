//
//  ViewDetalleDatos.swift
//  FindPet
//
//  Created by Luis Humberto Martinez Echegaray on 23/11/21.
//

import UIKit

class ViewDetalleDatos: UIViewController {
    @IBOutlet weak var fotoperrito: UIImageView!
    @IBOutlet var informacion:[UILabel]!
    var datos : Perro?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fotoperrito.image = UIImage(named: datos!.Nombre)
        let arreglo : [String] = ["¡Hola! Me llamo " + datos!.Nombre, datos!.Características, "Raza: " + datos!.Raza, "Sexo: " + datos!.Sexo, "Edad: " + String(datos!.Edad), "Tamaño: " + datos!.Tamaño, "Descripción: " + datos!.Descripcion, "Motivo de adopción: " + datos!.Motivo]
        for i in 0..<arreglo.count {
            informacion[i].text = String(arreglo[i])
        }
        
        // Do any additional setup after loading the view.
    }
    

}
