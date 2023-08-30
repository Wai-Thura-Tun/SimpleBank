//
//  LoginViewController+Routing.swift
//  simplebank
//
//  Created by Wai Thura Tun on 30/08/2023.
//

import Foundation
import UIKit

extension LoginViewController {
    
    func goToHome() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let mainController = mainStoryboard.instantiateInitialViewController() {
            mainController.modalPresentationStyle = .fullScreen
            mainController.modalTransitionStyle = .crossDissolve
            self.present(mainController, animated: true)
        }
    }
}
