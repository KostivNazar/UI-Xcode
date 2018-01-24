//
//  TableViewController.swift
//  UITableView
//
//  Created by Mac on 06.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBAction func pushEditAction(_ sender: Any) {
        tableView.setEditing(!tableView.isEditing, animated: true)
       
    }
    
    @IBAction func pushAddNewElement(_ sender: Any) {
        
        let alert = UIAlertController(title: "add new element", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        
       alert.addTextField { (textField) in
        textField.placeholder = "put the name"
        
        }
        
        let alertActionAdd = UIAlertAction(title: "add", style: UIAlertActionStyle.default) {(alertAction) in
          if  alert.textFields?.first?.text != "" {
                self.dataArray.append((alert.textFields?.first?.text)!)
            self.tableView.reloadData()
            self.saveData()
            
            
            }
            print("add")
            
        }
        
        let alertActionCancel = UIAlertAction(title: "cancel", style: UIAlertActionStyle.cancel) {(alertAction) in
        print("cancel")
        }
        
        alert.addAction(alertActionAdd)
        alert.addAction(alertActionCancel)
        
        self.present(alert, animated: true)
    }
    
    
    
    
    
    var dataArray: [String] = []
    
    
    func saveData () {
        UserDefaults.standard.set(dataArray, forKey: "dataArray")
        UserDefaults.standard.synchronize()
        
    }
    
    func loadData () {
        let data = UserDefaults.standard.object(forKey: "dataArray")
        
        if data != nil {
            dataArray = data as! [String]
            
        } else {
            dataArray = []
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let curentlyName = dataArray[indexPath.row]
        
        cell.textLabel?.text = curentlyName
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataArray.remove(at: indexPath.row)
            saveData()

            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let from = dataArray[fromIndexPath.row]

        dataArray.remove(at: fromIndexPath.row)
      
        dataArray.insert(from, at: fromIndexPath.row)
        
            saveData()
        tableView.reloadData()
        
    }
    

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
       
        return true
    }
    
    var selectedData: String?
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedData = dataArray[indexPath.row]

        self.performSegue(withIdentifier: "goToNewVC", sender: self)
        
        
//      let vs = storyboard?.instantiateViewController(withIdentifier: "NewViewControllerSB") as! NewViewController
//        
//        vs.textData = dataArray[indexPath.row]
//        
//        
//        
//        navigationController?.pushViewController(vs, animated: true)
        //present(vs, animated: true, completion: nil)
        
        
        
    }
    
    
    

 
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNewVC" {
        (segue.destination as! NewViewController).textData = selectedData
        }
        
//        let selectedData = dataArray[(tableView.indexPathForSelectedRow?.row)!]
//        (segue.destination as! NewViewController).textData = selectedData
    }


}

