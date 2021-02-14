//
//  CharactersTableTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Maxwell Lu on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class CharactersTableViewController: UITableViewController {
    
    //MARK: Properties
    
    
    // List of sections
    var sections: [String] = [
        "Leads",
        
        "Ensemble and Cell Block Dancers"
        
        
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
    
    
    // Return the title for each section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    
    
    // Runs every time the view appears (not just once when initially loaded)
    override func viewWillAppear(_ animated: Bool) {
        
        // Show the navigation item
        // Fixes bug where slow slide to unwind segue that is cancelled causes navigation bar to disappear
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
    }
    
    // MARK: - Table view data source
    
    // How many sections are in the table view
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    // How many rows to show in that one section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // On the first section, return the count of menu items
        // For any other section, return 0
        if section == 0 {
            return characterLeads.count
        } else if section == 1 {
            return characterEnsemble.count
        } else {
            return 0
        }
        
    }
    
    // Configure the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create an object of the dynamic cell "FacultyCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath)
        
        // Depending on the section, fill the textLabel with the relevant text
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = characterLeads[indexPath.row].characterName
        case 1:
            cell.textLabel?.text = characterEnsemble[indexPath.row].characterName
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get a reference to the destination view controller using segue.destination
        guard let detailViewController = segue.destination as? CharactersDetailViewController else {
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
            detailViewController.characterToDisplay = characterLeads[index]
        case 1:
            detailViewController.characterToDisplay = characterEnsemble[index]
        default:
            break
        }
        
        // Deselect the cell after segue unwind
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return
        }
        self.tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    
}

