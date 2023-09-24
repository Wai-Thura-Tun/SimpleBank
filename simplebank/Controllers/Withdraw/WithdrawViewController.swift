//
//  WithdrawViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class WithdrawViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    var account: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        amountTextField.delegate = self
        amountTextField.keyboardType = .numberPad
    }

    @IBAction func confirmWithDraw(_ sender: UIButton) {
        if let amount = amountTextField.text {
            let result = account.widthDraw(userId: account.id, amount: Double(amount) ?? 0.0)
            if result {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    @IBAction func tapView(_ sender: Any) {
        view.endEditing(true)
    }

}
