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
    
    let username: String = "Wai Thura Tun"
    let password: Int = 12345678
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
        updateUI()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField && userNameTextField.text != "" {
            userNameTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        }
        else {
            passwordTextField.resignFirstResponder()
        }
        return true
    }
    
    @IBAction func login(_ sender: UIButton) {
        if userNameTextField.text != "" && passwordTextField.text != "" {
            if userNameTextField.text == username && passwordTextField.text == String(password) {
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                if let mainController = mainStoryboard.instantiateInitialViewController() {
                    mainController.modalPresentationStyle = .fullScreen
                    self.present(mainController, animated: true)
                }
            }
            else {
                showAlert("Wrong credentials")
            }
        }
        else {
            showAlert("Enter username and password")
        }
        
    }
    
    func updateUI() {
        logoImageView.layer.cornerRadius = logoImageView.bounds.width / 2
        userNameTextField.borderStyle = .roundedRect
    }
    
    func showAlert(_ message: String) {
        let alertController = UIAlertController(title: "Login", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }

}

