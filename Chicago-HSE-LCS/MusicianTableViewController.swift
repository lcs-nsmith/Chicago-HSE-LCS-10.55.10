//
//  MusicianTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Davidson, Liam on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

// Extend the table view to add ability to search
extension MusicianTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
    }
    
}

class MusicianTableViewController: UITableViewController {
    
    // List of sections
    var sections: [String] = [
        "Students",
        "Other"
    ]
    
    //MARK: Properties
    var filteredStudentMusicians: [Musician] = []
    var filteredOtherMusicians: [Musician] = []

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

    //MARK: Properties
    
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
        searchController.searchBar.placeholder = "Search Musicians"
        navigationItem.searchController = searchController
        definesPresentationContext = true

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
                return filteredStudentMusicians.count
            } else if section == 1 {
                return filteredOtherMusicians.count
            } else {
                return 0
            }

        } else {

            if section == 0 {
                return studentMusicians.count
            } else if section == 1 {
                return otherMusicians.count
            } else {
                return 0
            }

        }

        
    }
    
    
    // Configure the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create an object of the dynamic cell "FacultyCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicianCell", for: indexPath)

        // Depending on the section, fill the textLabel with the relevant text
        // If searching, return result from filtered list based on search
        if isFiltering {

            switch indexPath.section {
            case 0:
                cell.textLabel?.text = filteredStudentMusicians[indexPath.row].name
            case 1:
                cell.textLabel?.text = filteredOtherMusicians[indexPath.row].name
            default:
                break
            }

        } else {

            // Depending on the section, fill the textLabel with the relevant text
            switch indexPath.section {
            case 0:
                cell.textLabel?.text = studentMusicians[indexPath.row].name
            case 1:
                cell.textLabel?.text = otherMusicians[indexPath.row].name
            default:
                break
            }

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
        
        // Now set the crew member to be displayed
        // If searching, present from filtered results
        if isFiltering {
            // Depending on the section, fill the textLabel with the relevant text
            switch section {
            case 0:
                detailViewController.bandMemberToDisplay = filteredStudentMusicians[index]
            case 1:
                detailViewController.bandMemberToDisplay = filteredOtherMusicians[index]
            default:
                break
            }
        } else {

            // Now set the musician to be displayed
             switch section {
             case 0:
                 detailViewController.bandMemberToDisplay = studentMusicians[index]
             case 1:
                 detailViewController.bandMemberToDisplay = otherMusicians[index]
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
        filteredStudentMusicians = studentMusicians.filter { (studentMusician: Musician) -> Bool in
            return studentMusician.name.lowercased().contains(searchText.lowercased())
        }

        // Filter the special teams list based on the search string
        filteredOtherMusicians = []
        for item in otherMusicians {
            if item.bio.lowercased().contains(searchText.lowercased()) {
                filteredOtherMusicians.append(item)
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
