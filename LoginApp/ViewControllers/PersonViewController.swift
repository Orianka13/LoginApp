//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Олеся Егорова on 01.12.2022.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var showMoreTextField: UITextField!
    
    
    var person: Person!
    
    private var pickerView = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setPickerView()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    private func setUI() {
        navigationItem.title = person.name
        image.image = UIImage(named: person.photos.first ?? "")
        descriptionLabel.text = person.descriptions.first
        showMoreTextField.text = person.title.first
    }
    
    private func setPickerView() {
        pickerView.delegate = self
        pickerView.dataSource = self
        
        showMoreTextField.inputView = pickerView
    }
}

//MARK: - UIPickerViewDelegate

extension PersonViewController: UIPickerViewDelegate {
    
    private enum MainColor {
        static let mainBackgroundColor: UIColor = UIColor(red: 208/255, green: 92/255, blue: 67/255, alpha: 1)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return person.title[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedPoint = person.title[row]
        showMoreTextField.text = selectedPoint
        image.image = UIImage(named: person.photos[row])
        descriptionLabel.text = person.descriptions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let attributedString = NSAttributedString(string: person.title[row], attributes: [NSAttributedString.Key.foregroundColor: MainColor.mainBackgroundColor])
        return attributedString
    }
}

//MARK: - UIPickerViewDataSource

extension PersonViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return person.title.count
    }
    
}

