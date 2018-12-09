//
//  PatienIDViewController.swift
//  Globmedicus
//
//  Created by Jonas Stefan Kürbis on 12/9/18.
//  Copyright © 2018 Jonas Stefan Kürbis. All rights reserved.
//

import UIKit

class PatienIDViewController: UITableViewController {
    
    var itemArray = ["PatientiD"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   //Mark - TableView Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
       
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    
    }
    
    //Mark - TableView - Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(itemArray[indexPath.row])
        
        // Accessory
        
      
        
        if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
              tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
              tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Hier könnte man einen Button einfügen
        
        
    }
    
    // Mark - Add New Items
    @IBAction func AddButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
      
        let alert = UIAlertController(title: "Add New Patient", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add Patient", style: .default) { (action) in
            // what will happen once the surgeon clicks the Add Patient Item
            
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Add New Patient iD"
            print(alertTextField.text)
            textField = alertTextField
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
        }
        
    }
    

