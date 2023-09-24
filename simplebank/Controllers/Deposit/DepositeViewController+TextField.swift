//
//  DepositeViewController+Validation.swift
//  simplebank
//
//  Created by Wai Thura Tun on 05/09/2023.
//

import Foundation
import UIKit

extension DepositeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
