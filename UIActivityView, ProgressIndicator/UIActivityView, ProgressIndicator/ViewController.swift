//
//  ViewController.swift
//  UIActivityView, ProgressIndicator
//
//  Created by Mac on 04.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer?
    var progress: Float = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var buttonStart: UIButton!
    @IBAction func startButtonAction(_ sender: Any) {
        
        progress = 0
        imageView.image = nil
        
        
        buttonStart.isHidden = true
        progressView.isHidden = false
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.tik), userInfo: nil, repeats: true)
        timer?.fire()
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
    }
    
    func tik() {
        progress += 0.1
        progressView.progress = progress
        
        if progress >= 1 {
            timer?.invalidate()
            progressView.progress = 0
            imageView.image = UIImage(named: "1.jpg")
            activityIndicator.stopAnimating()
            
            buttonStart.isHidden = false
            progressView.isHidden = true
            
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.hidesWhenStopped = true
        progressView.isHidden = true
        activityIndicator.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

