//
//  SecondViewController.swift
//  DelegateTutorial
//
//  Created by Nancy Jain on 27/09/22.
//

import UIKit
protocol PersonDetailsDelegate {
    func personDetails(name: String, city: String, state: String)
}
class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!

    var delegate: PersonDetailsDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
//when click on save button, we want to store 3 informaton of the page, so that we can use it for viewcontroller
    @IBAction func saveButton(_ sender: Any) {
        if nameTextField.text == "" {
            showAlert(title: "Enter Name", msg: "")
        } else if cityTextField.text == "" {
            showAlert(title: "Enter City", msg: "")
        } else if stateTextField.text == "" {
            showAlert(title: "Enter State", msg: "")
        } else {
            self.delegate?.personDetails(name: nameTextField.text!, city: cityTextField.text!, state: stateTextField.text!)
        }
        
    }
    func showAlert(title: String, msg: String){
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
}
