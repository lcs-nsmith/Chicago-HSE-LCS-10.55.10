//
//  MusicianTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Davidson, Liam on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class MusicianTableViewController: UITableViewController {
    
    // List of sections
    var sections: [String] = [
        "Students",
        "Other"
    ]
    
    //MARK: Properties
    // Array of all musicians
    var studentMusicians: [Musician] = [
        
        Musician(name: "Aidan Melville", instrument: "Saxophone", Bio: """
                Aidan Melville is a member of the Concert Band, Jazz Band, and Lorelei Choir. He has been playing Saxophone for 5 years and in bands for 4 with 3 years in both bands at LCS. He loves playing jazz and is extremely excited to be performing Chicago this year.
                """, ImageID: "aidan"),
        
        Musician(name: "Dorothy Li", instrument: "Flute", Bio: """
                This is Dorothy's fourth year in Lakefield. She's been playing the clarinet since grade 3. Dorothy has played in different concert bands and orchestras throughout the years. However, it's her first time being a member of the pit band and plays live in a musical, she's very excited to perform in Chicago!
                """, ImageID: "dorothy"),
        
        Musician(name: "Jeewoo Lee", instrument: "Trumpet", Bio: """
                Jeewoo plays the trumpet as part of the pit band in this production. He is also a member of the concert band. He got cut from soccer, but he thinks that made him step out from the comfort zone, and try new things since he had never been the part of the production before
                """, ImageID: "jeewoo"),
        
        Musician(name: "Prajina Salvarajah", instrument: "Saxophone", Bio: """
                This is Prajina’s first time being part of an LCS production. She has been playing the clarinet since 5th grade and has learned how to play the tenor saxophone last year. She has been a member of the LCS Concert band for 1 year and has recently joined the Jazz band. She is thrilled to play in the live band for the Chicago Musical.
                """, ImageID: "prajina"),
        
        Musician(name: "Rachel Xu", instrument: "Flute", Bio: """
                Rachel is from China Beijing and it is her fourth year in Lakefield. This is Rachel’s first time participating in a pit band. She has been playing flute since grade one, she has done a duet with clarinet and trio with cello and flute. Rachel is also a member of the LCS concert band for four years. She is excited to be performing in Chicago this year. Hope you enjoy the show!
                """, ImageID: "rachel"),
        
        Musician(name: "Ryosuke Togawa", instrument: "Trumpet", Bio: """
                Ryosuke plays the trumpet as part of the pit band in this production. He is passionate about cooking food as much as he is playing the trumpet
                """, ImageID: "ryosuke"),
        
    ]
    
    var otherMusicians: [Musician] = [
        
        Musician(name: "Community Musicians", instrument: "", Bio: "", ImageID: ""),
        
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
        
    // Return the title for each section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }

    
    // How many sections are in the table view
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    // How many rows to show in that one section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // On the first section, return the count of menu items
        // For any other section, return 0
        if section == 0 {
            return studentMusicians.count
        } else if section == 1 {
            return otherMusicians.count
        } else {
            return 0
        }
        
    }
    
    
    // Configure the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create an object of the dynamic cell "FacultyCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicianCell", for: indexPath)
        
        // Depending on the section, fill the textLabel with the relevant text
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = studentMusicians[indexPath.row].name
        case 1:
            cell.textLabel?.text = otherMusicians[indexPath.row].name
        default:
            break
        }
        
        // Configure cell color
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

        // Get the currently selected section of the table view
        guard let section = tableView.indexPathForSelectedRow?.section else {
            return
        }

        // Get the currently selected row of the table view
        guard let index = tableView.indexPathForSelectedRow?.row else {
            return
        }
        
        // Now set the faculty member to be displayed
        // Depending on the section, fill the textLabel with the relevant text
         switch section {
         case 0:
             detailViewController.bandMemberToDisplay = studentMusicians[index]
         case 1:
             detailViewController.bandMemberToDisplay = otherMusicians[index]
         default:
             break
         }
    }
    
}
