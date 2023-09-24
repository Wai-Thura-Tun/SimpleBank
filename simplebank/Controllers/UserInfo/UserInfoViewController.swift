//
//  UserInfoViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 24/09/2023.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var transactionCountLabel: UILabel!
    
    var account: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = account.userName
        typeLabel.text = account.isAdmin ? "Admin" : "User"
        transactionCountLabel.text = "\(account.getTransec().count)"
     }
}
