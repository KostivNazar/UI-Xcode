//
//  ViewController.swift
//  UIStepper
//
//  Created by Mac on 06.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperAction(_ sender: Any) {
        label.text = String(format: "%.f of %.f", stepper.value, stepper.maximumValue)
        progressView.progress = Float(stepper.value / stepper.maximumValue)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        stepperAction(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

