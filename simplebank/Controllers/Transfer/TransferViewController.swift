//
//  TransferViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class TransferViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var accountTextField: UITextField!
    
    var account: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        amountTextField.delegate = self
        accountTextField.delegate = self
        amountTextField.keyboardType = .numberPad
        accountTextField.keyboardType = .numberPad
    }
    
    @IBAction func confirmTransfer(_ sender: UIButton) {
        if let amount = amountTextField.text, let account = accountTextField.text {
            let result = self.account.transfer(fromId: self.account.id, toId: Int(account) ?? 0, amount: Double(amount) ?? 0.0)
            if result {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    @IBAction func tapView(_ sender: Any) {
        view.endEditing(true)
    }
}
