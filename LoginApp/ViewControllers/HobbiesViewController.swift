//
//  HobbiesViewController.swift
//  LoginApp
//
//  Created by Олеся Егорова on 01.12.2022.
//

import UIKit

final class HobbiesViewController: UIViewController {
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var hobbyPhoto: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    
    var hobbies: [Hobby]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        let hobby = hobbies[sender.selectedSegmentIndex]
        hobbyPhoto.image = UIImage(named: hobby.photo)
        descriptionLabel.text = hobby.description
    }
    
    private func setUI() {
        segmentedControl.selectedSegmentIndex = 0
        
        for (index, value) in hobbies.enumerated() {
            segmentedControl.setTitle(value.hobby, forSegmentAt: index)
        }
        
        let selectTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(red: 1/255, green: 93/255, blue: 104/255, alpha: 1)]
        let normalTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
          segmentedControl.setTitleTextAttributes(normalTitleTextAttributes, for: .normal)
          segmentedControl.setTitleTextAttributes(selectTitleTextAttributes, for: .selected)
        
        hobbyPhoto.image = UIImage(named: hobbies.first?.photo ?? "")
        descriptionLabel.text = hobbies.first?.description
    }
}
