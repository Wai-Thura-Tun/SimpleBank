//
//  HomeViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var depositeBtn: UIButton!
    @IBOutlet weak var withdrawBtn: UIButton!
    @IBOutlet weak var transferBtn: UIButton!
    @IBOutlet weak var historyBtn: UIButton!
    @IBOutlet weak var createUserBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {
        updateButtonView(depositeBtn)
        updateButtonView(withdrawBtn)
        updateButtonView(transferBtn)
        updateButtonView(historyBtn)
        updateButtonView(createUserBtn)
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
        
    }
    
    @IBAction func clickWithdraw(_ sender: UIButton) {
        
    }
    
    @IBAction func clickTransfer(_ sender: UIButton) {
        
    }
    
    @IBAction func clickHistory(_ sender: UIButton) {
        
    }
    
    @IBAction func clickCreateUser(_ sender: UIButton) {
        
    }
}
