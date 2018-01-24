//
//  ViewController.swift
//  tableViewCell
//
//  Created by Mac on 10.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model: Model?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = model?.name
        image.image = model?.image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

