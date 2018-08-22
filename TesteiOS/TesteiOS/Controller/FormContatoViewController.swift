//
//  ViewController.swift
//  TesteiOS
//
//  Created by Ronaldo Cagliari on 16/08/2018.
//  Copyright © 2018 Ronaldo Cagliari. All rights reserved.
//

import UIKit
import TextFieldEffects

class FormContatoViewController: UIViewController {

    // Incluir Label que receberá o campo message da API
    
    // Incluir Label para validação do formulário e/ou ALERT
    @IBOutlet weak var lblValidationMessage: UILabel!
    
    
    @IBOutlet weak var fldNomeCompleto: HoshiTextField!
    @IBOutlet weak var fldEmail: HoshiTextField!
    @IBOutlet weak var fldTelefone: HoshiTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        lblValidationMessage.isHidden = true
    
    }

    
    
    

}

