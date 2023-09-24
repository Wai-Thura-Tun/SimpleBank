//
//  TransferViewController+TextField.swift
//  simplebank
//
//  Created by Wai Thura Tun on 23/09/2023.
//

import Foundation
import UIKit

extension TransferViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
