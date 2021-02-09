//
//  WelcomeViewController.swift
//  UserName
//
//  Created by Pandos on 02.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    //MARK:- IB Outlets
    @IBOutlet weak var userNameLabel: UILabel!
    
    //MARK: - Public properties
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = "Welcome, \(userInfo.person.name)"
    }
}


