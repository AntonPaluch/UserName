//
//  HobbyViewController.swift
//  UserName
//
//  Created by Pandos on 09.02.2021.
//

import UIKit

class HobbyViewController: UIViewController {

    var userInfo: User!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = userInfo.person.name
        dateOfBirthLabel.text = userInfo.person.dateBirth
        hobbyLabel.text = userInfo.person.hobby
      
    }
    
}
