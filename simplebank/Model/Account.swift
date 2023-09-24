//
//  Account.swift
//  simplebank
//
//  Created by Wai Thura Tun on 30/08/2023.
//

import Foundation

class Account {
    private let _dbManager = DBManager.shared
    private var _id: Int
    var id: Int {
        return _id
    }
    
    var amount: Double {
        let transacs = _dbManager.fetchTransec(userId: self.id).map { transac in
            return Transcation(transactionInfo: transac)
        }
        var tmpAmount:Double = 0.0
        for transac in transacs {
            switch transac.opr {
            case .deposit:
                tmpAmount += transac.amount
            case .widthdraw:
                tmpAmount -= transac.amount
            case .transfer:
                if transac.toId == self.id {
                    tmpAmount += transac.amount
                }
                else if transac.fromId == self.id {
                    tmpAmount -= transac.amount
                }
            case .unknown:
                tmpAmount += 0
            }
        }
        return tmpAmount
    }
    
    private var _userName: String
    var userName: String {
        return _userName
    }
    
    private var _isAdmin: Bool
    var isAdmin: Bool {
        return _isAdmin
    }
    
    init(id:Int, username:String, isadmin: Bool) {
        self._id = id
        self._userName = username
        self._isAdmin = isadmin
    }
    
    convenience init(userInfo: [String : Any]) {
        let id = userInfo["id"] as! Int
        let userName = userInfo["username"] as! String
        let isAdmin = (userInfo["is_admin"] as! Int) == 1
        self.init(id: id, username: userName, isadmin: isAdmin)
    }
    
    //MARK: - Widthdraw
    func widthDraw(userId: Int, amount: Double) -> Bool {
        let result = _dbManager.createTransecc(from_id: userId, to_id: userId, amount: amount, transecType: TransactionType.widthdraw)
        return result
    }
    
    //MARK: - Transfer
    func transfer(fromId: Int, toId: Int, amount: Double) -> Bool {
        let result = _dbManager.createTransecc(from_id: fromId, to_id: toId, amount: amount, transecType: TransactionType.transfer)
        return result
    }
    
    //MARK: - Deposit
    func deposit(userId: Int, amount: Double) -> Bool {
        let result = _dbManager.createTransecc(from_id: userId, to_id: userId, amount: amount, transecType: TransactionType.deposit)
        return result
    }
    
    //MARK: - Get transcation
    func getTransec() -> [Transcation] {
        return _dbManager.fetchTransec(userId: self.id).map { transec in
            return Transcation(transactionInfo: transec)
        }
    }
    
    //MARK: - Create Account
    func createAcc(name: String, password: String, isAdmin: Int) -> Bool {
        return _dbManager.createAcc(name: name, password: password, isAdmin: isAdmin)
    }
}
