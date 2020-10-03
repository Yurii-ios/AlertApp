//
//  ViewController.swift
//  AlertApp
//
//  Created by Yurii Sameliuk on 02/02/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signButton(_ sender: UIButton) {
        
        if usernameTextField.text!.count < 1 {
       
            makeAlert(title: "Error!", message: "Username not found", preferredStyle: .alert)
        }else if passwordTextField.text!.count < 1 {
        
            makeAlert(title: "Error!", message: "Password not found", preferredStyle: .alert)
        }else if passwordAgainTextField.text != passwordTextField.text {
        
            makeAlert(title: "Error!", message: "password not found", preferredStyle: .alert)
        }else {
            
            makeAlert(title: "Succes!", message: "User created", preferredStyle:.alert)
        }
    }
    
    func makeAlert( title: String, message: String, preferredStyle: UIAlertController.Style ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
            let action = UIAlertAction(title: "Ok", style: .default) { (action) in
                
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
}
