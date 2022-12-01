//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Олеся Егорова on 28.11.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, " + person.name + "!"
    }
}
