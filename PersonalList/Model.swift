//
//  Model.swift
//  PersonalList
//
//  Created by mac on 8/30/22.
//

import Foundation
import UIKit

struct Person {
}

extension Person {
    static func getPersonList() -> [Person] {
        var dataManager = DataManager()
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let emails = dataManager.emails.shuffled()
        let phones = dataManager.phones.shuffled()
        for index in 0...8 {
            
          
            var people = dataManager[index]
            
            let name = dataManager.names
            let surname = dataManager.surnames
            let email = dataManager.emails
            let phone = dataManager.phones
            
            var title = "\(name) \(surname)"
            
            var detail = "\(email)"
            
            
        }
        return []
    }
}
