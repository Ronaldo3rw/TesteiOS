import UIKit
import TextFieldEffects

class ContatoViewController: UIViewController {

    
  
    @IBOutlet weak var lblMessage: UILabel!
    
    @IBOutlet weak var fldNome: HoshiTextField!
    @IBOutlet weak var fldEmail: HoshiTextField!
    @IBOutlet weak var fldTelefone: HoshiTextField!
    
    @IBOutlet weak var lblCadastrar: UILabel!
    
    @IBOutlet weak var lblValidationMessage: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.gray

        
    }
    
    @IBAction func btnEnviar(_ sender: Any) {
        // Nome Completo
        guard let nome = fldNome.text, fldNome.text?.count != 0 else {
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
        guard let telefone = fldTelefone.text, fldTelefone.text?.count != 0 else {
            lblValidationMessage.isHidden = false
            self.lblValidationMessage.text = "Digite seu telefone"
            return
        }
    }
    
    
    // Função para validar e-mail
    func isValidEmail(emailId:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailId)
    }
   
    
    
    /*
    // MARK: - Navigation
    // Função para validar Numero telefone (##) ####-#### || (##) #####-####
     /**
     [A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}
     [0-9-0 ]
     **/
     //    func isValidTelNumber(telnumber:telNumber) -> Bool {
     //        let telNumberRegEx = "[]"
     //    }
    */
    
    

}
