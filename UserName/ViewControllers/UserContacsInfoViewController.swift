//
//  UserHobbyInfoViewController.swift
//  UserName
//
//  Created by Pandos on 07.02.2021.
//

import UIKit

class UserContacsInfoViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var userInfo: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.text = userInfo.person.contactInfo.email
        phoneNumberLabel.text = userInfo.person.contactInfo.phoneNumber
        countryLabel.text = userInfo.person.contactInfo.country
        cityLabel.text = userInfo.person.contactInfo.city.gorod
        
    }

}
