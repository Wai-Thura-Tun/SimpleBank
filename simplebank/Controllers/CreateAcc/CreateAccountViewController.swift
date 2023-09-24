//
//  CreateAccountViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwTextField: UITextField!
    @IBOutlet weak var confirmPassTextField: UITextField!
    @IBOutlet weak var isAdminSwitch: UISwitch!
    
    var account: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func createUser(_ sender: UIButton) {
        if let name = nameTextField.text, !name.isEmpty {
            if checkPassword() {
                let isAdmin: Int = isAdminSwitch.isOn ? 1 : 0
                let password = passwTextField.text!
                let result = account.createAcc(name: name, password: password, isAdmin: isAdmin)
                if result {
                    self.navigationController?.popViewController(animated: true)
                }
            }
        }
    }
    
    @IBAction func tapView(_ sender: Any) {
        view.endEditing(true)
    }
}
