//
//  CrewsTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Lee, Jeewoo on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

// Extend the table view to add ability to search
extension CrewTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
    }
    
}

class CrewTableViewController: UITableViewController {
    
    // List of sections
    var sections: [String] = [
        "Primary Crew",
        "Special Teams"
    ]
    
    //MARK: Properties
    var filteredSortedPrimaryCrewMembers: [Crew] = []
    var filteredSpecialTeams: [Crew] = []

    // Will contain sorted list of crew members
    var sortedPrimaryCrewMembers: [Crew]?
    
    // Computed property to determine whether the search bar is empty
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    // Computed property to determine whether we are currently filtering results
    var isFiltering: Bool {
        let searchBarScopeIsFiltering =
            searchController.searchBar.selectedScopeButtonIndex != 0
        return searchController.isActive &&
            (!isSearchBarEmpty || searchBarScopeIsFiltering)
    }

    // Create a search controller instance
    let searchController = UISearchController(searchResultsController: nil)
    
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
        
        // Get table view to always have black background
        tableView.backgroundColor = .black
        
        // Set the seperator color to always be dark grey
        tableView.separatorColor = .darkGray
        
        // Set a zero-height footer so that no blank cells show after the list of menu items
        tableView.tableFooterView = UIView()
        
        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()
        
        // Configure search
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Crew Members"
        navigationItem.searchController = searchController
        definesPresentationContext = true

        // Sort the crew array by name
        sortedPrimaryCrewMembers = primaryCrewMembers.sorted { $0.name < $1.name }
        
    }
    
    // Runs every time the view appears (not just once when initially loaded)
    override func viewWillAppear(_ animated: Bool) {
        
        // Show the navigation item
        // Fixes bug where slow slide to unwind segue that is cancelled causes navigation bar to disappear
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
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
    
    // How many rows to show in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        // When searching, return number of matches in filtered list
        if isFiltering {

            if section == 0 {
                return filteredSortedPrimaryCrewMembers.count
            } else if section == 1 {
                return filteredSpecialTeams.count
            } else {
                return 0
            }

        } else {
            switch section {
            case 0:
                return primaryCrewMembers.count
            case 1:
                return specialTeams.count
            default:
                return 0
            }
        }
        
    }
    
    // Configure the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create an object of the dynamic cell "CrewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrewCell", for: indexPath)
                
        // Configure cell color
        cell.textLabel?.textColor = .white
        
        // Depending on the section, fill the textLabel with the relevant text
        // If searching, return result from filtered list based on search
        if isFiltering {

            switch indexPath.section {
            case 0:
                cell.textLabel?.text = filteredSortedPrimaryCrewMembers[indexPath.row].name
            case 1:
                cell.textLabel?.text = filteredSpecialTeams[indexPath.row].name
            default:
                break
            }

        } else {

            switch indexPath.section {
            case 0:
                cell.textLabel?.text = sortedPrimaryCrewMembers?[indexPath.row].name
            case 1:
                cell.textLabel?.text = specialTeams[indexPath.row].name
            default:
                break
            }
            
        }

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
        
        // Make text in the search bar be white, always
        if #available(iOS 13.0, *) {
            // Change search field text color in iOS 13
            searchController.searchBar.searchTextField.textColor = .white
        } else {
            // Change search field text color in iOS 12
            let textFieldInsideSearchBar = searchController.searchBar.value(forKey: "searchField") as? UITextField
            textFieldInsideSearchBar?.textColor = .white
        }

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
        
        // Get the currently selected section of the table view
        guard let section = tableView.indexPathForSelectedRow?.section else {
            return
        }
        
        // Get the currently selected row of the table view
        guard let index = tableView.indexPathForSelectedRow?.row else {
            return
        }
        
        // Now set the crew member to be displayed
        // If searching, present from filtered results
        if isFiltering {
            // Depending on the section, fill the textLabel with the relevant text
            switch section {
            case 0:
                detailViewController.crewMemberToDisplay = filteredSortedPrimaryCrewMembers[index]
            case 1:
                detailViewController.crewMemberToDisplay = filteredSpecialTeams[index]
            default:
                break
            }
        } else {
            // Depending on the section, fill the textLabel with the relevant text
            switch section {
            case 0:
                detailViewController.crewMemberToDisplay = sortedPrimaryCrewMembers?[index]
            case 1:
                detailViewController.crewMemberToDisplay = specialTeams[index]
            default:
                break
            }
        }

        // Deselect the cell after segue unwind
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return
        }
        self.tableView.deselectRow(at: indexPath, animated: true)
        
    }

    func filterContentForSearchText(_ searchText: String) {
                
        // Filter the crew members based on the search string
        if let sortedCrew = sortedPrimaryCrewMembers {
            filteredSortedPrimaryCrewMembers = sortedCrew.filter { (crew: Crew) -> Bool in
                return crew.name.lowercased().contains(searchText.lowercased())
            }
        }

        // Filter the special teams list based on the search string
        filteredSpecialTeams = []
        for team in specialTeams {
            if team.bio.lowercased().contains(searchText.lowercased()) {
                filteredSpecialTeams.append(team)
            }
        }

        // Change the data shown in the table view
        self.tableView.reloadData()
    }
    
    
    // Ensure that keyboard will not obscure longer list of search results on a phone with a small screen
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        searchController.searchBar.resignFirstResponder()
    }

}
