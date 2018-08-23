//
//  FundosViewController.swift
//  TesteiOS
//
//  Created by Ronaldo Cagliari on 22/08/2018.
//  Copyright © 2018 Ronaldo Cagliari. All rights reserved.
//

import UIKit

class FundosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        buscaJSON()
        // Do any additional setup after loading the view.
    }
    
    
    func buscaJSON(){
        // Abrir conexão com API
        let fundUrl = NSURL(string: "https://floating-mountain-50292.herokuapp.com/fund.json")
        let request = NSMutableURLRequest(url: fundUrl! as URL)
        
        // Tarefa para busca no banco
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in guard error == nil && data != nil else {
                print(error!)
                return
            }
            
            let httpStatus = response as? HTTPURLResponse
            
            if httpStatus?.statusCode == 200 {
                
                if data?.count != 0 {
                    
                    // Recebe o JSON
                    let respostaJSON = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSDictionary
                    
                    // Busca um Array de Objetos
                    if let screen = respostaJSON["screen"] as? NSDictionary {
                        print(screen)
                    }
                    
                    
                    
                }else{print("erro dados dentro")}
            }else{print("erro http \u{1F602}")}
        }
        task.resume()
    }
}
