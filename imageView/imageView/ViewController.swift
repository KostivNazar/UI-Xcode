//
//  ViewController.swift
//  imageView
//
//  Created by Mac on 26.09.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imagesArray: [UIImage]?
    var indexCurrentlyImage = 0

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func buttonChangeImage(_ sender: Any) {
        
         indexCurrentlyImage += 1
        
        
      
       
        
        if  indexCurrentlyImage >= (imagesArray?.count)! {
            indexCurrentlyImage = 0
        }
        
         imageView.image = imagesArray![indexCurrentlyImage]
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let image1 = UIImage(named: "1.png")
        let image2 = UIImage(named: "2.png")
        let image3 = UIImage(named: "3.png")
        
      imagesArray = [image1!,image2!,image3!]
        
        imageView.image = imagesArray![indexCurrentlyImage]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

