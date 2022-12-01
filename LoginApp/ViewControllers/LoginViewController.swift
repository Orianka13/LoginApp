//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Олеся Егорова on 28.11.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.person = user.person
        }
    }
    
    @IBAction func logInTapped() {
        if userNameTextField.text == user.userName, passwordTextField.text == user.password {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
            showAlert(title: "Error",
                      message: "User name or password is incorrect",
                      textField: passwordTextField)
        }
    }
    
    @IBAction func forgotCredentials(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.userName)")
        : showAlert(title: "Oops!", message: "Your password is \(user.password)")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default){ _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
