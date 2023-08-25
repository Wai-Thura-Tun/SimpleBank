//
//  ViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
        updateUI()
    }
    
    @IBAction func login(_ sender: UIButton) {
        
    }
    
    func updateUI() {
        logoImageView.layer.cornerRadius = 50
        userNameTextField.borderStyle = .roundedRect
    }

}

