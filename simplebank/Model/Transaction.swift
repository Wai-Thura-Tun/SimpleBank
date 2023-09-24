//
//  Transaction.swift
//  simplebank
//
//  Created by Wai Thura Tun on 15/09/2023.
//

import Foundation

class Transcation {
    private var _id: Int
    var id: Int {
        get {
            return _id
        }
        set {
            _id = newValue
        }
    }
    
    private var _from_id: Int
    var fromId: Int {
        get {
            return _from_id
        }
        set {
            _from_id = newValue
        }
    }
    
    private var _to_id: Int
    var toId: Int {
        get {
            return _to_id
        }
        set {
            _to_id = newValue
        }
    }
    
    private var _amount: Double
    var amount: Double {
        get {
            return _amount
        }
        set {
            _amount = newValue
        }
    }
    
    private var _opr: TransactionType
    var opr: TransactionType {
        get {
            return _opr
        }
        set {
            _opr = newValue
        }
    }
    
    private var _date: Double
    var date: Double {
        get {
            return _date
        }
        set {
            _date = newValue
        }
    }
    
    init(_id: Int, _from_id: Int, _to_id: Int, _amount: Double, _opr: TransactionType, _date: Double) {
        self._id = _id
        self._from_id = _from_id
        self._to_id = _to_id
        self._amount = _amount
        self._opr = _opr
        self._date = _date
    }
    
    convenience init(transactionInfo: [String:Any]) {
        let id = transactionInfo["id"] as? Int ?? 0
        let fromId = transactionInfo["from_id"] as? Int ?? 0
        let toId = transactionInfo["to_id"] as? Int ?? 0
        let amount = transactionInfo["amount"] as? Double ?? 0
        let oprString: String = transactionInfo["opr"] as? String ?? "UN"
        let opr = TransactionType(rawValue: oprString) ?? TransactionType.unknown
        let date = transactionInfo["date"] as? Double ?? 0
        self.init(_id: id, _from_id: fromId, _to_id: toId, _amount: amount, _opr: opr, _date: date)
    }
}

