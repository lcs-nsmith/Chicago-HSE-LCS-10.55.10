//
//  CrewsTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Lee, Jeewoo on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class CrewsTableViewController: UITableViewController {

    
    //MARK: Properties
    
    var crews : [Crew] = [
        Crew(name: "Emily Schnurr", job: "Stage Manager", bio: """
        Emily is thrilled to be the stage manager of Chicago! She had always loved theater and started stage managing in grade 7. Last year, Emily was the stage manager for The Heart of Robin Hood. In her spare time, Emily is the Senior in Charge of photography and a Senior in Charge of chapel. She has always had a love for the arts, both fine arts of performing arts. Emily is traveling to London England this March with her drama class to deepen her skills as a stage manager. She hopes you enjoy the show!
"""),
        
        Crew(name: "Gabi Thorpe", job: "Stage Manager", bio: """
        This is Gabi’s first time being a part of an LCS production. She is one of the stage managers for Chicago and has learned so much throughout this whole experience. She decided to take on this opportunity in order to see the more technical side of theatre. She wants to thank the wonderful production team for everything they’ve taught her with this experience!
"""),

        Crew(name: "Camila Marcos", job: "Assistant Stage Manager", bio: """
        Camila is a grade 9 student at Lakefield. She has been doing theatre since she was 7 years old. She has always been on stage and I wanted to learn more about the magic that happens backstage.

"""),
        
        Crew(name: "Faith Dickinson", job: "Dance Captain", bio: """
        Faith is grateful for her position as Assistant Choreographer in the production of Chicago. She has loved dancing since she was three years old. This show has taught her a lot about choreographing in the ‘real world’, the demand, focus, and dedication needed. She has learned that choreographing is a true passion of hers and she feels the need to pursue it in her future. Faith would like to thank the directors for allowing her as a part of the team.


"""),
        
        Crew(name: "Simon Dutil", job: "Lighting and Sound Director", bio: """
        Simon Dutil is from Saint-Georges, Quebec and it is his second year at Lakefield. He has now done 2 productions, one dance showcase and the play The Heart of Robin Hood as a lighting and sound designer. He is undertaking his first musical! He is always there to help from painting the set to teaching other people how to use the light. Simon is always looking for new challenges and loves to learn new skills.

""")
    
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
