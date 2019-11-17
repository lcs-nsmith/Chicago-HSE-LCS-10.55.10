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
    
        Musician(name: "Aidan Melville", instrument: "Saxophone", Bio: "Aidan Melville is a member of the Concert Band, Jazz Band, and Lorelei Choir. He has been playing Saxophone for 5 years and in bands for 4 with 3 years in both bands at LCS. He loves playing jazz and is extremely excited to be performing Chicago this year.", ImageID: "geoffBemrose"),
        
        Musician(name: "Jeewoo Lee", instrument: "Trumpet", Bio: "Jeewoo plays the trumpet as part of the pit band in this production.", ImageID: "jeewoo"),
        
        Musician(name: "Ryosuke Togawa", instrument: "Trumpet", Bio: "Ryosuke plays the trumpet as part of the pit band in this production.", ImageID: "ryosuke"),
        
        Musician(name: "Prajina Salvarajah", instrument: "Saxophone", Bio: "Prajina plays the saxophone as part of the pit band in this production.", ImageID: "prajina"),
        
        Musician(name: "Rachel Xu", instrument: "Flute", Bio: "Yet to write.", ImageID: "rachel"),
        
        Musician(name: "Dorothy Li", instrument: "Flute", Bio: "Yet to write.", ImageID: "dorothy")
    
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

   // How many sections are in the table view
       override func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       
       // How many rows to show in that one section
       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           
           // On the first section, return the count of menu items
           // For any other section, return 0
           if section == 0 {
               return BandMembers.count
           } else {
               return 0
           }
           
       }

    
    // Configure the cell
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           // Create an object of the dynamic cell "FacultyCell"
           let cell = tableView.dequeueReusableCell(withIdentifier: "MusicianCell", for: indexPath)
           
           // Depending on the section, fill the textLabel with the relevant text
           cell.textLabel?.text = BandMembers[indexPath.row].name
           cell.textLabel?.textColor = .white
           
           // Make the cell have a black background colour
           cell.backgroundColor = .black
           
           // Make the cell always select as dark gray
           let backgroundColorView = UIView()
           backgroundColorView.backgroundColor = UIColor.darkGray
           cell.selectedBackgroundView = backgroundColorView
           
           // Set a custom disclosure indicator (white) so it is visible on dark background
           let chevron = UIImage(named: "chevron.png")
           cell.accessoryType = .disclosureIndicator
           cell.accessoryView = UIImageView(image: chevron!)
           
           // Return the configured cell
           return cell
           
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
           // Get a reference to the destination view controller using segue.destination
           guard let detailViewController = segue.destination as? MusicianDetailViewController else {
               return
           }
           
           // Get the currently selected row of the table view
           guard let index = tableView.indexPathForSelectedRow?.row else {
               return
           }
           
           // Now set the faculty member to be displayed
           detailViewController.bandMemberToDisplay = BandMembers[index]
       }

}
