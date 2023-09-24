//
//  HomeViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var depositeBtn: UIButton!
    @IBOutlet weak var withdrawBtn: UIButton!
    @IBOutlet weak var transferBtn: UIButton!
    @IBOutlet weak var historyBtn: UIButton!
    @IBOutlet weak var createUserBtn: UIButton!
    @IBOutlet weak var infoBtn: UIButton!
    @IBOutlet weak var blankView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        updateUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateUI()
    }
    
    func setUp() {
        updateButtonView(depositeBtn)
        updateButtonView(withdrawBtn)
        updateButtonView(transferBtn)
        updateButtonView(historyBtn)
        updateButtonView(createUserBtn)
        updateButtonView(infoBtn)
    }
    
    func updateUI() {
        if let user = Bank.currentAccount {
            nameLabel.text = user.userName.captializedName
            print(user.amount)
            amountLabel.text = String(user.amount)
            if user.isAdmin {
                blankView.isHidden = true
            }
            else {
                createUserBtn.isHidden = true
            }
        }
        
    }
    
    func updateButtonView(_ sender: UIButton) {
        sender.layer.cornerRadius = sender.bounds.width / 12
        sender.layer.shadowColor = UIColor.gray.cgColor
        sender.layer.shadowOffset = CGSize(width: 0, height: 10)
        sender.layer.shadowOpacity = 0.7
        sender.layer.shadowRadius = 10
        sender.layer.shadowPath = nil
    }
    
    @IBAction func clickDeposite(_ sender: UIButton) {
        goToDeposit()
    }
    
    @IBAction func clickWithdraw(_ sender: UIButton) {
        goToWithdraw()
    }
    
    @IBAction func clickTransfer(_ sender: UIButton) {
        goToTransfer()
    }
    
    @IBAction func clickHistory(_ sender: UIButton) {
        goToHistory()
    }
    
    @IBAction func clickCreateUser(_ sender: UIButton) {
        goToCreateAcc()
    }
    
    @IBAction func clickUserInfo(_ sender: UIButton) {
        goToUserInfo()
    }
}
