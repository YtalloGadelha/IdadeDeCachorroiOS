//
//  ViewController.swift
//  Idade de Cachorro
//
//  Created by Ytallo on 01/07/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
        if let idade = Int(campoIdadeCachorro.text ?? "0.0") {
            
            let idadeCachorro = idade * 7
            
            campoIdadeCachorro.text = ""
            legendaResultado.text = "A idade do cachorro é: " + String(idadeCachorro)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        campoIdadeCachorro.layer.cornerRadius = 10
        campoIdadeCachorro.layer.masksToBounds = true
        legendaResultado.layer.cornerRadius = 10
        legendaResultado.layer.masksToBounds = true
        
    }


}
