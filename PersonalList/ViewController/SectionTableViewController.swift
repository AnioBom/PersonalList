//
//  SectionTableViewController.swift
//  PersonalList
//
//  Created by mac on 9/5/22.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var persons = Person.getContactList()


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionPersonName", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        content.text = person.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ?UIImage(systemName: Contacts.phone.rawValue)
        :UIImage(systemName: Contacts.email.rawValue)
        
        cell.contentConfiguration = content
        return cell
    }
}

//MARK: - UITableViewDelegate
    
extension SectionTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionPersonName") as? HeaderTableViewCell
        let person = persons[section]
        cell?.configure(wirh: person)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        70
    }
    
    
}

    

