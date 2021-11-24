//
//  ViewAdoptarTab.swift
//  FindPet
//
//  Created by Luis Humberto Martinez Echegaray on 22/11/21.
//

import UIKit

class ViewAdoptarTab: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagen.loadGif(name: "puppy")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func regresarviewAdopta(segue: UIStoryboardSegue){ }

}
