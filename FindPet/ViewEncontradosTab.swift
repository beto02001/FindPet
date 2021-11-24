//
//  ViewEncontradosTab.swift
//  FindPet
//
//  Created by Luis Humberto Martinez Echegaray on 22/11/21.
//

import UIKit

class ViewEncontradosTab: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagen.loadGif(name: "encontrados")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
