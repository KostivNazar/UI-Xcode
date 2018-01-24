//
//  ViewController.swift
//  textView
//
//  Created by Mac on 03.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBAction func pushButtonAction(_ sender: Any) {
        textView.resignFirstResponder()
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        textView.text = "write some text"
        textView.textColor = UIColor.lightGray

    
    }



}

extension ViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if textView.text == "write some text" {
        textView.text = ""
        textView.textColor = UIColor.black
        }
        
    }
    func textViewDidEndEditing(_ textView: UITextView){
        if textView.text == "" {
            textView.text = "write some text"
            textView.textColor = UIColor.lightGray
        } else {
            textView.text = textView.text.replacingOccurrences(of: "fuck", with: "****")
        }
        
    }
}
