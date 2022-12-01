//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Олеся Егорова on 01.12.2022.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var selectMoreButton: UIButton!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.name
        selectMoreButton.layer.cornerRadius = 10
        selectMoreButton.setTitle(person.title.first, for: .normal)
        image.image = UIImage(named: person.photos.first ?? "")
        descriptionLabel.text = person.descriptions.first
        
    }
    
    @IBAction func selectMore(_ sender: UIButton) {
    }
}
