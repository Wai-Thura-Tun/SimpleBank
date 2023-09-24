//
//  CreateAccountViewController+TextField.swift
//  simplebank
//
//  Created by Wai Thura Tun on 23/09/2023.
//

import Foundation
import UIKit

extension CreateAccountViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func checkPassword() -> Bool {
        if let password = passwTextField.text, let confirmPassword  = confirmPassTextField.text {
            if !password.isEmpty && !confirmPassword.isEmpty && password == confirmPassword {
                return true
            }
        }
        return false
    }
}
