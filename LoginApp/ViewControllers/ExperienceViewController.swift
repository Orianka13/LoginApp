//
//  ExperienceViewController.swift
//  LoginApp
//
//  Created by Олеся Егорова on 01.12.2022.
//

import UIKit

final class ExperienceViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var psLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionLabel.text = person.experience
        psLabel.text = person.psText
        psLabel.isHidden = true
        
    }
    
    
    @IBAction func showPS(_ sender: UISwitch) {
        psLabel.isHidden.toggle()
    }
}
