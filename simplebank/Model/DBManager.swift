//
//  DBManager.swift
//  simplebank
//
//  Created by Wai Thura Tun on 30/08/2023.
//

import Foundation

class DBManager {
    static let shared = DBManager()
    private let _db = SQLiteDB.shared
    
    init() {
      openDB()
    }
    
    // Open sqlite connection
    func openDB() {
        _ = _db.open(copyFile: true)
    }
    
    // Close current sqlite connection
    func closeDB() {
        _db.closeDB()
    }
    
    // Withdraw money
    func withDraw() {
        
    }
    
    // Deposit money
    func deposit() {
        
    }
    
    // Fetch transcation history
    func history() {
        
    }
    
    // Transfer money
    func transfer() {
        
    }
    
    // Login user
    func login(username: String, password: String) -> [String:Any]? {
        let sql = "SELECT * FROM users WHERE username = '\(username)' AND password = '\(password)'"
        let result = _db.query(sql: sql)
        if result.count == 1 {
            let user = result.first!
            let id: Int = user["id"] as! Int
            let username: String = user["username"] as! String
            let isAdmin: Int = user["is_admin"]! as! Int
            return ["id": id, "username": username, "is_admin": isAdmin]
        }
        return nil
    }
}
