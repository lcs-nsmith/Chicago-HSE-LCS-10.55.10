//
//  MusicianTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Davidson, Liam on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class MusicianTableViewController: UITableViewController {

    //MARK: Properties
    // Array of all musicians
    var BandMembers: [Musician] = [
    
        Musician(name: "Aidan Melville", instrument: "Saxophone", Bio: "Aidan Melville is a member of the Concert Band, Jazz Band, and Lorelei Choir. He has been playing Saxophone for 5 years and in bands for 4 with 3 years in both bands at LCS. He loves playing jazz and is extremely excited to be performing Chicago this year.", ImageID: "Aidan"),
        
        Musician(name: "Jeewoo Lee", instrument: "Trumpet", Bio: "Yet to write.", ImageID: "Jeewoo"),
        
        Musician(name: "Ryosuke Togawa", instrument: "Trumpet", Bio: "Yet to write.", ImageID: "Ryosuke"),
        
        Musician(name: "Prajina Salvarajah", instrument: "Saxophone", Bio: "Yet to write.", ImageID: "Prajina"),
        
        Musician(name: "Rachel Xu", instrument: "Flute", Bio: "Yet to write.", ImageID: "Rachel"),
        
        Musician(name: "Dorothy Li", instrument: "Flute", Bio: "Yet to write.", ImageID: "Dorothy")
    
    ]
    
      // Set the status bar text to be white
      override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
      }
      
      override func viewDidLoad() {
          super.viewDidLoad()
          
          // Uncomment the following line to preserve selection between presentations
          // self.clearsSelectionOnViewWillAppear = false
          
          // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
          // self.navigationItem.rightBarButtonItem = self.editButtonItem
          
          // Show the navigation item
          self.navigationController?.setNavigationBarHidden(false, animated: false)
          
          // Get table view to always have black background
          tableView.backgroundColor = .black
          
          // Set the seperator color to always be dark grey
          tableView.separatorColor = .darkGray
          
          // Set a zero-height footer so that no blank cells show after the list of menu items
          tableView.tableFooterView = UIView()
          
          // Signal need to update the status bar
          self.setNeedsStatusBarAppearanceUpdate()
          
      }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
