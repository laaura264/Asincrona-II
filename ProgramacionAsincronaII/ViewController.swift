//
//  ViewController.swift
//  ProgramacionAsincronaII
//
//  Created by l.arranz.martinez on 6/2/19.
//  Copyright © 2019 l.arranz.martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    func descargaImagen(){
        
        //Generar una cola para ejecutar cosas
        let serialQueue = DispatchQueue(label: "myQueue")
        //sobre serialQueue se puede ejecutar código de tipo sync o async:
        serialQueue.async {
            <#code#>
        }
        serialQueue.sync {
            <#code#>
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //descargaImagen()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        descargaImagen() //Deshabilita el boton cuando la imagen todavía no se ha cargado
    }


}

