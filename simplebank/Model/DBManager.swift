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
    
    //MARK: - Open connection
    func openDB() {
        _ = _db.open(copyFile: true)
    }
    
    //MARK: - Close connection
    func closeDB() {
        _db.closeDB()
    }
    
    //MARK: - Create Transaction
    func createTransecc(from_id: Int, to_id: Int, amount: Double, transecType: TransactionType) -> Bool {
        let date = Date().timeIntervalSince1970
        let sql = "INSERT INTO transec (from_id, to_id, amount, opr, date) VALUES ('\(from_id)', '\(to_id)', '\(amount)', '\(transecType.rawValue)', '\(date)')"
        let result = _db.execute(sql: sql)
        return result != 0
    }
    
    //MARK: - Fetch Transaction
    func fetchTransec(userId: Int) -> [[String: Any]] {
        let sql = "SELECT * FROM transec WHERE from_id = '\(userId)' OR to_id = '\(userId)'"
        let result = _db.query(sql: sql)
        return result
    }
    
    func createAcc(name: String, password: String, isAdmin: Int) -> Bool {
        let sql = "INSERT INTO users (username, password, is_admin) VALUES ('\(name)','\(password)','\(isAdmin)')"
        let result = _db.execute(sql: sql)
        return result != 0
    }
    
    //MARK: - Login
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
