//
//  UserGroupsTableViewController.swift
//  testLogin
//
//  Created by Andrey on 10/04/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import UIKit

class UserGroupsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profile.groups.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "GroupProfile", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupProfile", for: indexPath) as! GroupTableViewCell
        let groupName = profile.groups[indexPath.row].name
        cell.groupName.text = groupName
        return cell
    }
    
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
         //print("addGroup \(segue.identifier)")
        if segue.identifier == "addCity"{
           // let allCitiesController = segue.source as! AllCitiesController
            let allGroupsController = segue.source as! AllGroupsTableViewController
            
            if let indexPath = allGroupsController.tableView.indexPathForSelectedRow {
                var group: Group = AllGroupsTableViewController.groups[indexPath.row]
                profile.groups.append(group)
                tableView.reloadData()
            }
        }
    }

    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("\(indexPath.item)")
            profile.groups.remove(at: indexPath.item)
            tableView.reloadData()
            // Delete the row from the data source
            //tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
