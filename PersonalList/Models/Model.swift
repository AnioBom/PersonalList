//
//  Model.swift
//  PersonalList
//
//  Created by mac on 8/30/22.
//

import Foundation
import UIKit

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rows: [String] {
        [phone, email]
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let dataStore = DataManager.shared
    
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phones = dataStore.phones.shuffled()
        
        let interationCount = min (
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<interationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
