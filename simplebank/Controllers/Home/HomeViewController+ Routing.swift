//
//  HomeViewController+ Routing.swift
//  simplebank
//
//  Created by Wai Thura Tun on 05/09/2023.
//

import Foundation
import UIKit

extension HomeViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "depositsegue":
            let vc = segue.destination as! DepositeViewController
                vc.account = Bank.currentAccount
        case "transfersegue":
            let vc = segue.destination as! TransferViewController
            vc.account = Bank.currentAccount
        case "withdrawsegue":
            let vc = segue.destination as! WithdrawViewController
            vc.account = Bank.currentAccount
        case "historysegue":
            let vc = segue.destination as! HistoryViewController
            vc.account = Bank.currentAccount
        case "createaccsegue":
            let vc = segue.destination as! CreateAccountViewController
            vc.account = Bank.currentAccount
        case "userinfosegue":
            let vc = segue.destination as! UserInfoViewController
            vc.account = Bank.currentAccount
        default: break;
        }
    }
    
    func goToDeposit() {
        performSegue(withIdentifier: "depositsegue", sender: nil)
    }
    
    func goToTransfer() {
        performSegue(withIdentifier: "transfersegue", sender: nil)
    }
    
    func goToWithdraw() {
        performSegue(withIdentifier: "withdrawsegue", sender: nil)
    }
    
    func goToHistory() {
        performSegue(withIdentifier: "historysegue", sender: nil)
    }
    
    func goToCreateAcc() {
        performSegue(withIdentifier: "createaccsegue", sender: nil)
    }
    
    func goToUserInfo() {
        performSegue(withIdentifier: "userinfosegue", sender: nil)
    }
}
