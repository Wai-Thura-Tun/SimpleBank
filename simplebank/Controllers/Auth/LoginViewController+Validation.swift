//
//  LoginViewController+Validation.swift
//  simplebank
//
//  Created by Wai Thura Tun on 30/08/2023.
//

import Foundation
import UIKit

extension LoginViewController: UITextFieldDelegate {
    
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
    
    func checkValidation() -> Bool {
        guard let userName = userNameTextField.text, let password = passwordTextField.text else {
            showAlert("Enter username and password")
            return false
        }
        
        guard let userAcc = bank.login(username: userName, password: password) else {
            showAlert("Wrong credentials")
            return false
        }
        Bank.currentAccount = userAcc
        return true
    }
    
    func showAlert(_ message: String) {
        let alertController = UIAlertController(title: "Login", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
}
