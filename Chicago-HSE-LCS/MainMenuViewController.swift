//
//  MainMenuViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Gordon, Russell on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

// Allow one view to be pinned to another
// See: https://useyourloaf.com/blog/stack-view-background-color/
public extension UIView {
    func pin(to view: UIView) {
    NSLayoutConstraint.activate([
      leadingAnchor.constraint(equalTo: view.leadingAnchor),
      trailingAnchor.constraint(equalTo: view.trailingAnchor),
      topAnchor.constraint(equalTo: view.topAnchor),
      bottomAnchor.constraint(equalTo: view.bottomAnchor)
      ])
  }
}

class MainMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var showStartedMessageHeight: NSLayoutConstraint!
    @IBOutlet weak var messageStackView: UIStackView!
    @IBOutlet weak var showStartedMessage: UILabel!
    
    // Background view for the stack view
    private lazy var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = chicagoGold
        view.layer.cornerRadius = 0
        return view
    }()
    
    // Define showing times of the musical
    let forChicagoMusical: [Showing] = [

        Showing(start: "19:25 Tue, 26 Nov 2019 EST", end: "21:45 Tue, 26 Nov 2019 EST"),
        Showing(start: "19:25 Wed, 27 Nov 2019 EST", end: "21:45 Wed, 27 Nov 2019 EST"),
        Showing(start: "19:25 Thu, 28 Nov 2019 EST", end: "21:45 Thu, 28 Nov 2019 EST"),
        Showing(start: "19:25 Fri, 29 Nov 2019 EST", end: "21:45 Fri, 29 Nov 2019 EST"),

    ]

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
        MainMenuItem(name: "Concessions"),
        MainMenuItem(name: "Washroom Locations"),

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
    
    // Time to check to display warning when show is on
    var dateTimeToCheck: Date?

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
        
        // Add the background to the stack view
        pinBackground(backgroundView, to: messageStackView)
        
        // Set the show started message color
        showStartedMessage.backgroundColor = chicagoGold
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Hide the navigation item on the root view controller
        self.navigationController?.setNavigationBarHidden(true, animated: false)
                
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // If the current date and time is during a showing, ask the user to turn off the app
        // Eastern time zone only
        #if DEBUG
        #else
            dateTimeToCheck = Date()
        #endif
        if let dateTimeToCheckWith = dateTimeToCheck {
            if dateTimeToCheckWith.timeZone() == "EST" {
                
                #if DEBUG
                print("In the Eastern time zone...")
                #endif
                
                // During show time?
                if dateTimeToCheckWith.isDuring(showings: forChicagoMusical) {
                    
                    #if DEBUG
                    print("During the show 🤨")
                    #endif
                    // Show the message
                    
                    view.layoutIfNeeded() // force any pending operations to finish
                    UIView.animate(withDuration: 1.0, animations: { () -> Void in
                        self.showStartedMessageHeight.constant = 225
                        self.view.layoutIfNeeded()
                    })

                } else {

                    #if DEBUG
                    print("Not during the show 👍🏻")
                    #endif
                    view.layoutIfNeeded() // force any pending operations to finish
                    UIView.animate(withDuration: 1.0, animations: { () -> Void in
                        self.showStartedMessageHeight.constant = 0
                        self.view.layoutIfNeeded()
                    })

                }
                
            }
        }
    }
    
    // Add the background view to the stack view
    private func pinBackground(_ view: UIView, to stackView: UIStackView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        stackView.insertSubview(view, at: 0)
        view.pin(to: stackView)
    }
    
    // Pins
    
    
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
                #if DEBUG
                dateTimeToCheck = forChicagoMusical[0].start.addingTimeInterval(TimeInterval(60))
                #endif
            case "Musical Numbers":
                performSegue(withIdentifier: "MusicalNumbers", sender: nil)
                #if DEBUG
                dateTimeToCheck = Date()
                #endif
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
            case "Washroom Locations":
                performSegue(withIdentifier: "Washrooms", sender: nil)
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
