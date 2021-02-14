//
//  ActorsTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Lee, Jeewoo on 2019-11-14.
//  Edited by Maxwell Lu on 2019-11-21.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

// Extend the table view to add ability to search
extension CastMemberTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!)
    }
    
}

class CastMemberTableViewController: UITableViewController {
    
    // List of sections
    var sections: [String] = [
        "Leads",
        "Ensemble AND Cell Block Dancers"
    ]
    
    //MARK: Properties
    var filteredLeads: [CastMember] = []
    var filteredEnsemble: [CastMember] = []

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
        searchController.searchBar.placeholder = "Search Cast Members"
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
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    // Return count of table cells in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                
        // When searching, return number of matches in filtered list
        if isFiltering {

            if section == 0 {
                return filteredLeads.count
            } else if section == 1 {
                return filteredEnsemble.count
            } else {
                return 0
            }

        } else {

            if section == 0 {
                return castLeads.count
            } else if section == 1 {
                return castEnsemble.count
            } else {
                return 0
            }

        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create an object of the dynamic cell "FacultyCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "CastMemberCell", for: indexPath)
                
        // Configure cell color
        cell.textLabel?.textColor = .white
        
        // Depending on the section, fill the textLabel with the relevant text
        // If searching, return result from filtered list based on search
        if isFiltering {

            switch indexPath.section {
            case 0:
                cell.textLabel?.text = filteredLeads[indexPath.row].name
            case 1:
                cell.textLabel?.text = filteredEnsemble[indexPath.row].name
            default:
                break
            }

        } else {

            switch indexPath.section {
            case 0:
                cell.textLabel?.text = castLeads[indexPath.row].name
            case 1:
                cell.textLabel?.text = castEnsemble[indexPath.row].name
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        // Get a reference to the destination view controller using segue.destination
        guard let detailViewController = segue.destination as? CastMemberDetailViewController else {
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
        
        // Now set the cast member to be displayed
        // If searching, present from filtered results
        if isFiltering {
            // Depending on the section, fill the textLabel with the relevant text
            switch section {
            case 0:
                detailViewController.castMemberToDisplay = filteredLeads[index]
            case 1:
                detailViewController.castMemberToDisplay = filteredEnsemble[index]
            default:
                break
            }
        } else {
            // Depending on the section, fill the textLabel with the relevant text
            switch section {
            case 0:
                detailViewController.castMemberToDisplay = castLeads[index]
            case 1:
                detailViewController.castMemberToDisplay = castEnsemble[index]
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
                
        // Filter the cast members based on the search string
        filteredLeads = castLeads.filter { (cast: CastMember) -> Bool in
            return cast.name.lowercased().contains(searchText.lowercased())
        }

        // Filter the cast members based on the search string
        filteredEnsemble = castEnsemble.filter { (cast: CastMember) -> Bool in
            return cast.name.lowercased().contains(searchText.lowercased())
        }

        // Change the data shown in the table view
        self.tableView.reloadData()
    }
    
    // Ensure that keyboard will not obscure longer list of search results on a phone with a small screen
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        searchController.searchBar.resignFirstResponder()
    }
    
}


