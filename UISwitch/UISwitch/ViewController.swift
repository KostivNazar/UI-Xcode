//
//  ViewController.swift
//  UISwitch
//
//  Created by Mac on 06.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchHappy: UISwitch!
    
    @IBOutlet weak var switchWantToChange: UISwitch!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func switchAction(_ sender: Any) {
        label.text = happyLife(happy: switchHappy.isOn, change: switchWantToChange.isOn)
        
        saveState(happy: switchHappy.isOn, change: switchWantToChange.isOn)
    }
    
    
    
    func happyLife(happy: Bool, change: Bool) -> String {
        if happy && change {
            return "good"
        }
        if !happy && change {
            return "maybe bad"
        }
        if happy && !change {
            return "maybe good"
        }
        if !happy && !change {
            return "very bad"
        }
        
        return "?"
    }
    
    func saveState(happy: Bool, change: Bool) {

        UserDefaults.standard.set(happy, forKey: "isHappy")
         UserDefaults.standard.set(change, forKey: "isChange")
        UserDefaults.standard.synchronize()
        
    }
    
    func getState() ->(happy: Bool, change: Bool) {
    
        
        return (UserDefaults.standard.bool(forKey: "isHappy"),
        UserDefaults.standard.bool(forKey: "isChange"))
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = happyLife(happy: switchHappy.isOn, change: switchWantToChange.isOn)
        switchHappy.isOn = getState().happy
        switchWantToChange.isOn = getState().change
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

