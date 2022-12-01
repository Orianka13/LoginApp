//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Олеся Егорова on 01.12.2022.
//

import UIKit

class PersonViewController: UIViewController {
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.name
    }
}
