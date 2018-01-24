//
//  ViewController.swift
//  UIWebView
//
//  Created by Mac on 12.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var webView: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        webView.delegate = self

    }
}

extension ViewController : UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        if let url = NSURL(string: textField.text!) {
        
        let request = NSURLRequest(url: (url as URL))
            webView.loadRequest(request as URLRequest)
        
        }
        return true
    }
    
    
}

extension ViewController : UIWebViewDelegate {
    
}
