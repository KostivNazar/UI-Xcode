//
//  NewViewController.swift
//  UITableView
//
//  Created by Mac on 10.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBAction func pushBackNav(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func pushBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBOutlet weak var label: UILabel!
    
    var textData : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = textData
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
