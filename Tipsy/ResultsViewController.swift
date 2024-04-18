//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Jason Fang on 4/17/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingslabel: UILabel!
    
    var tipsNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = tipsNumber
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
    

}
