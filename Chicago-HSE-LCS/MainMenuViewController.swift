//
//  MainMenuViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Gordon, Russell on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    // List of sections
    var sections: [String] = [
        "The Show",
        "Intermission",
        "Other"
    ]
    
    // Lists of various section items
    // TODO: Replace 'magic constants' with an enumeration with raw string values for menu items
    // See https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html#ID149
    var showItems: [MainMenuItem] = [
        
        MainMenuItem(name: "Tickets and Dates"),
        MainMenuItem(name: "Musical Numbers"),
        MainMenuItem(name: "Characters"),
        MainMenuItem(name: "Cast"),
        MainMenuItem(name: "Crew"),
        MainMenuItem(name: "Musicians"),
        MainMenuItem(name: "Faculty"),
        MainMenuItem(name: "Production Team Notes")
        
    ]
    var intermissionItems: [MainMenuItem] = [
        
        MainMenuItem(name: "Theatre Lobby Art Display"),
        MainMenuItem(name: "Concessions")
        
    ]
    var otherItems: [MainMenuItem] = [
        
        MainMenuItem(name: "Our Musical Theatre Program"),
        MainMenuItem(name: "About This App"),
        MainMenuItem(name: "Acknowledgements and Legal")
        
    ]

    // Set the status bar text color to be white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Initializer
    
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Set a zero-height footer so that no blank cells show after the list of menu items
        tableView.tableFooterView = UIView()
        
        // Get table view to always have black background
        tableView.backgroundColor = .black
        
        // Set the seperator color to always be dark grey
        tableView.separatorColor = .darkGray
        
        // Set the navigation bar tint color to be black, always
        self.navigationController?.navigationBar.barTintColor = .black
        
        // Set the navigation bar title color to be white, always
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Hide the navigation item on the root view controller
        self.navigationController?.setNavigationBarHidden(true, animated: false)
                
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    // Runs when a table view cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                
        // Identify what section we are on
        switch indexPath.section {
        case 0:
            // Now what page to navigation to in this section
            switch showItems[indexPath.row].name {
            case "Tickets and Dates":
                performSegue(withIdentifier: "TicketsDates", sender: nil)
            case "Musical Numbers":
                performSegue(withIdentifier: "MusicalNumbers", sender: nil)
            case "Characters":
                performSegue(withIdentifier: "Characters", sender: nil)
            case "Cast":
                performSegue(withIdentifier: "Cast", sender: nil)
            case "Crew":
                performSegue(withIdentifier: "Crew", sender: nil)
            case "Musicians":
                performSegue(withIdentifier: "Musicians", sender: nil)
            case "Faculty":
                performSegue(withIdentifier: "Faculty", sender: nil)
            case "Production Team Notes":
                performSegue(withIdentifier: "ProductionTeamNotes", sender: nil)
            default:
                break
            }
        case 1:
            // Now what page to navigation to in this section
            switch intermissionItems[indexPath.row].name {
            case "Theatre Lobby Art Display":
                performSegue(withIdentifier: "ArtDisplay", sender: nil)
            case "Concessions":
                performSegue(withIdentifier: "Concessions", sender: nil)
            default:
                break
            }
        case 2:
            // Now what page to navigation to in this section
            switch otherItems[indexPath.row].name {
            case "Our Musical Theatre Program":
                performSegue(withIdentifier: "MusicalTheatreProgram", sender: nil)
            case "About This App":
                performSegue(withIdentifier: "About", sender: nil)
            case "Acknowledgements and Legal":
                performSegue(withIdentifier: "Acknowledgements", sender: nil)
            default:
                break
            }
        default:
            break
        }
        
        // Deselect the cell after segue unwind
        self.tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    // How many sections are in the table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    // Return the title for each section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    // How many rows to show in that one section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // On the first section, return the count of menu items
        // For any other section, return 0
        switch section {
        case 0:
            return showItems.count
        case 1:
            return intermissionItems.count
        case 2:
            return otherItems.count
        default:
            return 0
        }
        
    }
    
    // Configure the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create an object of the dynamic cell "MenuItemCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath)
        
        // Depending on the section, fill the textLabel with the relevant text
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = showItems[indexPath.row].name
        case 1:
            cell.textLabel?.text = intermissionItems[indexPath.row].name
        case 2:
            cell.textLabel?.text = otherItems[indexPath.row].name
        default:
            break
        }
        
        // Configure cell text color
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
    
    
}
