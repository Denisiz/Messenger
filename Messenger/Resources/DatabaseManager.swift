//
//  DatabaseManager.swift
//  Messenger
//
//  Created by Денис on 27.02.2022.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    public func test () {
        
        database.child("foo").setValue(["something": true])
        
    }
    
    
    
}
