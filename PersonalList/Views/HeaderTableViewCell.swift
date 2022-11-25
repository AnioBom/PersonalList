//
//  HeaderTableViewCell.swift
//  PersonalList
//
//  Created by mac on 9/5/22.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet var nameLable: UILabel!
    @IBOutlet var surnameLable: UILabel!
    
    @IBAction func phoneButton(_ sender: UIButton) {
    }
    
    // MARK: - Public methods
    
    func configure(wirh person: Person?) {
        nameLable.text = person?.name
        surnameLable.text = person?.surname
    }
}
