//
//  Bank.swift
//  simplebank
//
//  Created by Wai Thura Tun on 30/08/2023.
//

import Foundation

class Bank {
    static var currentAccount: Account?
    
    private let _dbManager = DBManager.shared
    private var _isLogin:Bool = false
    
    var isLogin: Bool {
        return _isLogin
    }
    
    func login(username: String, password: String) -> Account? {
        if let userDict = _dbManager.login(username: username, password: password) {
            let userAcc = Account(userInfo: userDict)
            _isLogin = true
            return userAcc
        }
        return nil
    }
    
    func logout() {
        _isLogin = false
    }
}
