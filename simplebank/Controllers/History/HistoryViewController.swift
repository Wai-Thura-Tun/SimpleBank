//
//  HistoryViewController.swift
//  simplebank
//
//  Created by Wai Thura Tun on 25/08/2023.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var historyTableView: UITableView!
    
    var transcation: [Transcation] = []
    var account: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyTableView.dataSource = self
        historyTableView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getTransactions()
        historyTableView.reloadData()
    }
    
    func getTransactions() {
        transcation = account.getTransec()
    }
    
    
}
