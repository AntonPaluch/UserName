//
//  LoginViewController.swift
//  UserName
//
//  Created by Pandos on 02.02.2021.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    // MARK: - Private properties
//    private let newUser = User(person: Person(contactInfo: ContactInfo(city: Kolomna())))
    private var newUser = User.getUserData()
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else {
            return
        }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userInfo = newUser
            } else if let contactInfoVC = viewController as? UserContacsInfoViewController {
                contactInfoVC.userInfo = newUser
            } else if let aboutMeVC = viewController as? HobbyViewController {
                aboutMeVC.userInfo = newUser
            }
        }
     }
    // MARK: IBActions
    @IBAction func logInButtonPressed() {
        guard
            userNameTF.text == newUser.userName,
            passwordTF.text == newUser.password
        else {
           showAlert(
               title: "Invalid login or password",
               message: "Please, enter correct login and password",
               textField: passwordTF
           )
           return
        }
        
          performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "Oops!",
                  message: "You name is \(newUser.userName)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Oops!",
                  message: "Your password is \(newUser.password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
}
// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder() 
        } else {
            logInButtonPressed()
        }
        return true
    }
}

