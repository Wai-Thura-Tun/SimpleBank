//
//  HistoryTableViewCell.swift
//  simplebank
//
//  Created by Wai Thura Tun on 23/09/2023.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var toLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var transactionTypeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(transaction: Transcation) {
        let date = Date.init(timeIntervalSince1970: transaction.date)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        let dateString = dateFormatter.string(from: date)
        toLabel.text = "To : \(transaction.toId)"
        amountLabel.text = "Amount : \(transaction.amount)"
        dateLabel.text = dateString
        transactionTypeLabel.text = transaction.opr.rawValue
    }
    
}
