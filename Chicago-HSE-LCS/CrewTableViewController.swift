//
//  CrewsTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Lee, Jeewoo on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class CrewTableViewController: UITableViewController {

    
    //MARK: Properties
    
    var crews : [Crew] = [
    Crew(name: "Emily Schnurr", job: "Stage Manager", imageId: "emilySchnurr", bio: """
    Emily is thrilled to be the stage manager of Chicago! She had always loved theater and started stage managing in grade 7. Last year, Emily was the stage manager for The Heart of Robin Hood. In her spare time, Emily is the Senior in Charge of photography and a Senior in Charge of chapel. She has always had a love for the arts, both fine arts of performing arts. Emily is traveling to London England this March with her drama class to deepen her skills as a stage manager. She hopes you enjoy the show!

    """),
        
    Crew(name: "Gabi Thorpe", job: "Stage Manager", imageId: "gabiThorpe", bio: """
    This is Gabi’s first time being a part of an LCS production. She is one of the stage managers for Chicago and has learned so much throughout this whole experience. She decided to take on this opportunity in order to see the more technical side of theatre. She wants to thank the wonderful production team for everything they’ve taught her with this experience!


    """),

    Crew(name: "Camila Marcos", job: "Assistant Stage Manager", imageId: "camilaMarcos", bio: """
    Camila is a grade 9 student at Lakefield. She has been doing theatre since she was 7 years old. She has always been on stage and I wanted to learn more about the magic that happens backstage.

    """),
        
    Crew(name: "Faith Dickinson", job: "Dance Captain", imageId: "faithDickinson", bio: """
    Faith is grateful for her position as Assistant Choreographer in the production of Chicago. She has loved dancing since she was three years old. This show has taught her a lot about choreographing in the ‘real world’, the demand, focus, and dedication needed. She has learned that choreographing is a true passion of hers and she feels the need to pursue it in her future. Faith would like to thank the directors for allowing her as a part of the team.


    """),
        
    Crew(name: "Simon Dutil", job: "Lighting and Sound Director", imageId: "simonDutil",  bio: """
    Simon Dutil is from Saint-Georges, Quebec and it is his second year at Lakefield. He has now done 2 productions, one dance showcase and the play The Heart of Robin Hood as a lighting and sound designer. He is undertaking his first musical! He is always there to help from painting the set to teaching other people how to use the light. Simon is always looking for new challenges and loves to learn new skills.

    """),
    
    Crew(name: "Joe Huang", job: "Set Builder", imageId: "joeHuang",  bio: """
    Joe Huang is very glad to be the part of Chicago. It's his first time to participate in the production.

    """),
    
    Crew(name: "Wulfric  Harris-Stoertz", job: "Stage Hand/Set Builder", imageId: "wulfricHarris-Stoertz",  bio: """
    Wulfric Harris-Stoertz is a crucial part of the crew, providing brute force, skill in construction, and bad puns to the set-building effort. Wulfric works backstage to keep the play running smoothly and to try to minimize and counteract the destruction caused by the actors on the props and set. This is Wulfric’s fourth play at Lakefield and he looks forward to the final show.

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
        
        // Set a zero-height footer so that no blank cells show after the list of menu items
        tableView.tableFooterView = UIView()
        
        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // How many rows to show in that one section
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            // On the first section, return the count of menu items
            // For any other section, return 0
            if section == 0 {
                return crews.count
            } else {
                return 0
            }
            
        }
        
        // Configure the cell
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // Create an object of the dynamic cell "FacultyCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: "CrewCell", for: indexPath)
            
            // Depending on the section, fill the textLabel with the relevant text
            cell.textLabel?.text = crews[indexPath.row].name
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
        
        // MARK: - Navigation
        
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            // Get a reference to the destination view controller using segue.destination
            guard let detailViewController = segue.destination as? CrewDetailViewController else {
                return
            }
            
            // Get the currently selected row of the table view
            guard let index = tableView.indexPathForSelectedRow?.row else {
                return
            }
            
            // Now set the faculty member to be displayed
            detailViewController.crewMemberToDisplay = crews[index]
        }
        
    }
