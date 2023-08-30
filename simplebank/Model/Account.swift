//
//  Account.swift
//  simplebank
//
//  Created by Wai Thura Tun on 30/08/2023.
//

import Foundation

class Account {
    private var _id: Int
    var id: Int {
        return _id
    }
    
    var amount: Double {
        return 0
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
}
