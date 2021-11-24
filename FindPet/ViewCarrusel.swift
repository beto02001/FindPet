//
//  ViewAdoptar.swift
//  FindPet
//
//  Created by Luis Humberto Martinez Echegaray on 22/11/21.
//

import UIKit

class ViewAdoptar: UIViewController {

    @IBOutlet weak var carrusel: iCarousel?
    var indicefoto : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        carrusel?.type = .coverFlow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func carousel(_ carousel: iCarousel, didSelectItemAt index: Int) {
        print(index)
        indicefoto = index
        print(indicefoto)
    
    }
    
    @IBAction func regresarACarrusel(segue: UIStoryboardSegue){ }
    
    @IBAction func seleccionar(_ sender: Any) {
        print(carrusel?.currentItemIndex)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ViewDetalleDatos{
            let informacion = segue.destination as? ViewDetalleDatos
            informacion?.datos = perrosAdoptados[carrusel!.currentItemIndex]
        }
    }
}

extension ViewAdoptar: iCarouselDelegate, iCarouselDataSource {
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return perrosAdoptados.count
        
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var imageView: UIImageView!
        if view == nil{
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 150, height: 450))

        } else {
            imageView = view as? UIImageView
        }
        imageView.image = UIImage(named: perrosAdoptados[index].Nombre)
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 15
        imageView.layer.borderWidth = 10
        imageView.layer.borderColor = CGColor(red: 150, green: 150, blue: 150, alpha: 1)
        imageView.backgroundColor = UIColor(named: "AzulFondo")
        return imageView
    }
}


