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

    // Botão Enviar
    @IBAction func btnEnviar(_ sender: Any) {
        
        // Nome Completo
        guard let nomeCompleto = fldNomeCompleto.text, fldNomeCompleto.text?.count != 0 else {
            lblValidationMessage.isHidden = false
            self.lblValidationMessage.text = "Olá, primeiro se apresente com o seu nome: "
            // VMaskTextField
            return
        }
        
        // Email
        guard let email = fldEmail.text, fldEmail.text?.count != 0 else {
            lblValidationMessage.isHidden = false
            self.lblValidationMessage.text = "Digite um e-mail"
            return
        }
        if isValidEmail(emailId: email) == false {
            lblValidationMessage.isHidden = false
            self.lblValidationMessage.text = "Digite um e-mail válido!"
        }
        
        // Telefone
        guard let telNumber = fldTelefone.text, fldTelefone.text?.count != 0 else {
            lblValidationMessage.isHidden = false
            self.lblValidationMessage.text = "Digite seu telefone"
            return
        }
        
        
        
    }
    
    
    
//    Função para validar Numero telefone (##) ####-#### || (##) #####-####
    /**
 
    [A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}
    [0-9-0 ]
     **/
    //    func isValidTelNumber(telnumber:telNumber) -> Bool {
//        let telNumberRegEx = "[]"
    
    
    
    
//    }

    
    // Função para validar e-mail
    func isValidEmail(emailId:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailId)
    }
    
    

}

