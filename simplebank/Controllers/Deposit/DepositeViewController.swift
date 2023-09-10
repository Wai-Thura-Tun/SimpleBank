//
//  DepositeViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class DepositeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var amountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        amountTextField.delegate = self
    }

    @IBAction func confirmDeposite(_ sender: UIButton) {
        
    }
    
    
}
