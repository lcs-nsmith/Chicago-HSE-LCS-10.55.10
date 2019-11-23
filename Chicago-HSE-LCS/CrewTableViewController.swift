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

    var primaryCrewMembers : [Crew] = [
        
        Crew(name: "Faith Dickinson", job: "Dance Captain", imageId: "faithDickinson", bio: """
            Faith is grateful for her position as Assistant Choreographer in the production of Chicago. She has loved dancing since she was three years old. This show has taught her a lot about choreography in the ‘real world’: the demand, focus, and dedication needed. She has learned that choreography is a true passion of hers and feels the need to pursue it in the future. Faith thanks the directors for allowing her to be a part of the team.
            """),
        
        Crew(name: "Emily Schnurr", job: "Stage Manager", imageId: "emilySchnurr", bio: """
            Emily is thrilled to be the stage manager of Chicago! She has always loved theater and started stage managing in grade 7. Last year, Emily was the stage manager for The Heart of Robin Hood. In her spare time, Emily is the Senior in Charge of Photography and a Senior in Charge of Chapel. She has always had a love for fine arts and the performing arts. Emily is traveling to London, England this March with her drama class to deepen her skills as a stage manager. She hopes you enjoy the show!
            """),
        
        Crew(name: "Gabi Thorpe", job: "Stage Manager", imageId: "gabiThorpe", bio: """
            This is Gabi’s first time being a part of an LCS production. She has learned so much throughout the entire experience. Gabi decided to try stage managing to learn more about the technical side of theatre. She thanks the production team for everything they’ve taught her this year!
            """),
        
        Crew(name: "Camila Marcos", job: "Assistant Stage Manager", imageId: "camilaMarcos", bio: """
            Camila is a grade 9 student at Lakefield. She has been doing theatre since she was seven years old. She has been on stage in acting roles in the past, and this year, wanted to learn more about the magic that happens backstage.
            """),
        
        Crew(name: "Brent Dadds", job: "Props Master", imageId: "brentDadds", bio: ""),
        
        Crew(name: "Rowan Harris-Stoertz", job: "Stage Crew", imageId: "rowanHarris-Stoertz", bio: ""),
        
        Crew(name: "Wulfric Harris-Stoertz", job: "Stage Crew", imageId: "wulfricHarris-Stoertz",  bio: """
            Wulfric Harris-Stoertz is a crucial part of the crew, providing brute force, skill in construction, and bad puns to the set-building effort. Wulfric works backstage to keep the play running smoothly and tries to minimize the destruction of props and the set that is caused by the (well-meaning) actors. This is Wulfric’s fourth play at Lakefield and he looks forward to the final show.
            """),
        
        Crew(name: "Enrica Geloso", job: "Stage Crew", imageId: "enricaGeloso", bio: ""),
        
        Crew(name: "Eric Zang", job: "Stage Crew", imageId: "ericZang", bio: ""),
        
        Crew(name: "Sebastian Tyson", job: "Stage Crew", imageId: "sebastianTyson", bio: ""),
        
        Crew(name: "Matt McCall", job: "Stage Crew", imageId: "mattMccall", bio: ""),
        
        Crew(name: "Paulina Martinez", job: "Stage Crew", imageId: "paulinaMartinez", bio: ""),
        
        Crew(name: "Simon Dutil", job: "Sound Technician", imageId: "simonDutil",  bio: """
            Simon Dutil is from Saint-Georges, Quebec. This is his second year at Lakefield. As a lighting and sound designer, he has now participated in two productions at LCS: one Dance Showcase, and last year's Spring play, The Heart of Robin Hood. This year, he participates in his first musical! He is always there to help: from painting the set to teaching other people how to use the lights. Simon is always looking for new challenges and loves to learn new skills.
            """),
        
        Crew(name: "Dylan Smith", job: "Lighting Technician", imageId: "dylanSmith",  bio: ""),
        
        Crew(name: "Patricio Arnau Young", job: "Projection Design", imageId: "patricioArnauYoung",  bio: ""),
        
        Crew(name: "Amy Shin", job: "Costume Design Assistant", imageId: "amy", bio: ""),
        
        Crew(name: "Eno Chen", job: "Costume Design Assistant", imageId: "eno", bio: ""),
        
        Crew(name: "Judy Yu", job: "Costume Design Assistant", imageId: "judy", bio: ""),
        
        Crew(name: "Quang Bui", job: "Costume Design Assistant", imageId: "quang", bio: ""),
        
    ]
    
    var specialTeams : [Crew] = [
        
        Crew(name: "Hair and Make-up", job: "", imageId: "", bio: """
            Amy Shin
            Chloe Traviss
            Elizabeth Moody
            Jami Lowry
            Judy Yu
            Rachel Bemrose
            Tori Whitmore
            """),
        
        Crew(name: "Posters", job: "", imageId: "", bio: """
            Stephanie Wilcox
            Drew Antzis
            """),

        Crew(name: "Set Construction", job: "", imageId: "", bio: """
            Curtis Elliot
            Dylan Smith
            Geoff Bemrose
            Jenis Kim
            Joe Huang
            June Saunders
            Matt McCall
            Mike Grant
            Neil Young
            Rob Fleming
            Rowan Harris-Stoertz
            Sebastian Tyson
            Sihan Che
            Simon Dutil
            Tyler Jervis
            Wulfric Harris-Stoertz
            Zach Rubin
            """),
        
        Crew(name: "Set Painting", job: "", imageId: "", bio: """
            Alejandro Rodriguez
            Alexis Pettersen
            Amber Claassen
            Amy Shin
            Catherine Kim
            Chelsea Yue
            Emile Boisjoly
            Eno Chen
            Geoff Bemrose
            Judy Yu
            Julio Midence
            Kelly Wang
            Nancy Lu
            Olivia Cantelon
            Patricio Arnau Young
            Paulina Martinez Reyes
            Pia Garcia
            Rachel Bemrose
            Sarah Young
            Tayler Morencie
            Tina St. John
            """),
        
    ]

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
