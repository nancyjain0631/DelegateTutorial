//
//  ViewController.swift
//  DelegateTutorial
//
//  Created by Nancy Jain on 27/09/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

//when we click on "Go to form" BUTTOn, we want to go to SecondViewController
    @IBAction func formButton(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
//        VERY IMP STEP, WITHOUT THIS, DELEGATION WON'T WORK
        
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}
extension ViewController: PersonDetailsDelegate {
    func personDetails(name: String, city: String, state: String) {
        nameLabel.text = name
        cityLabel.text = city
        stateLabel.text = state
    }
    
    
}

