//
//  ViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logoImageView: UIImageView!
    
    var bank: Bank = Bank()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func login(_ sender: UIButton) {
        checkValidation()
    }
    
    func updateUI() {
        logoImageView.layer.cornerRadius = logoImageView.bounds.width / 2
        userNameTextField.borderStyle = .roundedRect
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }

}

