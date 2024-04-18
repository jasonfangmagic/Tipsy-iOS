//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tips: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billTextField.delegate = self
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
       
        
        if zeroPctButton.isSelected == true {
            tips = 0.0
        } else if tenPctButton.isSelected == true {
            tips = 0.1
        } else {
            tips = 0.2
        }
        
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = String(format: "%0.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billTextField.endEditing(true)
        let peopleNumber = Float(splitNumberLabel.text ?? "2")!
        print((Float(billTextField.text!) ?? 0 * (1 + tips))/5 )
        
        self.performSegue(withIdentifier: "calculate", sender: self)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(splitNumberLabel.text ?? "2")
        return true
    }
    
    

}

