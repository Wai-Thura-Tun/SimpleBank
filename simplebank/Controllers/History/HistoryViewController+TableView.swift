//
//  HistoryViewController+TableView.swift
//  simplebank
//
//  Created by Wai Thura Tun on 23/09/2023.
//

import Foundation
import UIKit

extension HistoryViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transcation.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let historyCell = tableView.dequeueReusableCell(withIdentifier: "historycell") as! HistoryTableViewCell
        historyCell.configure(transaction: self.transcation[indexPath.row])
        return historyCell
    }
}
