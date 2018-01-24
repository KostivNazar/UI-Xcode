//
//  ViewController.swift
//  UISegmentController
//
//  Created by Mac on 04.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    @IBAction func segmentAction(_ sender: Any) {
        
        if (sender as! UISegmentedControl).selectedSegmentIndex == 0 {
            imageView.image = UIImage(named: "1.png")
        }
        if (sender as! UISegmentedControl).selectedSegmentIndex == 1 {
            imageView.image = UIImage(named: "2.png")
        }
        if (sender as! UISegmentedControl).selectedSegmentIndex == 2 {
            imageView.image = UIImage(named: "3.jpec")
        }
        if (sender as! UISegmentedControl).selectedSegmentIndex == 3 {
            imageView.image = UIImage(named: "4.jpg")
        }
        if (sender as! UISegmentedControl).selectedSegmentIndex == 4 {
            imageView.image = UIImage(named: "1.jpg")
        }
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

