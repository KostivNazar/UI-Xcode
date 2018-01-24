//
//  ViewController.swift
//  UISlider
//
//  Created by Mac on 04.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var slider: UISlider!

    @IBAction func sliderAction(_ sender: Any) {
        
        imageView.alpha = CGFloat(slider.value)
        label.text = String(format: "%f", slider.value)
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    
    }


}

