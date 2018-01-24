//
//  ViewController.swift
//  textField
//
//  Created by Mac on 26.09.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonAction(_ sender: Any) {
        
        label.text = "Hello \(textField.text!)"
        
        if textField.text == "" {
            return
        }
        
        textField.text = ""
        textField.resignFirstResponder()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
          button.isHidden = true
       // textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        button.isHidden = false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        button.isHidden = true
    }


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        buttonAction(self)
        return true
        
    }
}

