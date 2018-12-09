//
//  MenuTry.swift
//  Globmedicus
//
//  Created by Jonas Stefan Kürbis on 12/9/18.
//  Copyright © 2018 Jonas Stefan Kürbis. All rights reserved.
//

import Foundation
import UIKit

class TableViewMenu: UITableViewController{
    
    var dataoptions = [String]()
    var identities = [String]()
    
    
    
    override func viewDidLoad() {
        dataoptions = ["General Patient Data", "Diagnosis", "OPS-Codes", "Instruments", "P-Time", "Complications"]
        identities = ["A", "B", "C", "D", "E", "F"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataoptions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "MenuCell")
        cell?.textLabel!.text = dataoptions[indexPath.row]
        
        return cell!
}
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }

}
