//
//  PersonalListTableViewController.swift
//  PersonalList
//
//  Created by mac on 8/30/22.
//

import UIKit

class PersonalListViewController: UITableViewController {
    
    private var person = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personalList", for: indexPath)
        
        let personalList = person[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
       // content.text = person

        cell.contentConfiguration = content

        return cell
    }

    //MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: IndexPath, animated: true)
        let list = person[indexPath.row]
        performSegue(withIdentifier: "personalList", sender: list)
    }
    

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
