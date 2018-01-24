//
//  ViewController.swift
//  button
//
//  Created by Mac on 25.09.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func pushButton(_ sender: Any) {
        print("Hello!")
        button.backgroundColor = UIColor.clear
        
        button.setTitle("HAHAHAHA", for: UIControlState.normal)
        button.tintColor = UIColor.brown
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setTitle("PUSH ME !!", for: UIControlState.normal)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

