//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Topu Saha on 12/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var universityPhoto: UIImageView!
    
    // Text Fields
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    
    
    @IBOutlet weak var gradeLevelSlider: UISegmentedControl!
    @IBOutlet weak var numberOfPetsTextField: UITextField!
    @IBOutlet weak var numberOfPetsController: UIStepper!
    @IBOutlet weak var morePetsController: UISwitch!
    @IBOutlet weak var IntroduceButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func IntroduceSelf(_ sender: UIButton) {
        
        let year = gradeLevelSlider.titleForSegment(at: gradeLevelSlider.selectedSegmentIndex)
        var introduction = "Hi, my name is \(firstNameTextField.text!) \(lastNameTextField.text!). I go to \(schoolTextField.text!) and I am a \(year!) year student. "
        
        if (Int(numberOfPetsTextField.text!)) != 0 {
            introduction += "I have \(numberOfPetsTextField.text!) pets. "
        }
        
        else {
            introduction += "I currently have no pets. "
        }
        
        if morePetsController.isOn {
           introduction += "I would like to own more pets. "
        }
        
        else {
            introduction += "I would not like to own more pets. "
        }
        
        let alertMessage = UIAlertController(title: "Introducting \(firstNameTextField.text!) \(lastNameTextField.text!)", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertMessage.addAction(action)
        present(alertMessage, animated: true, completion: nil)

    }
    
    @IBAction func didStepperChange(_ sender: UIStepper) {
        numberOfPetsTextField.text = "\(Int(sender.value))"
    }
    

}

