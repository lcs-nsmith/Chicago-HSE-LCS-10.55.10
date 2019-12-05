//
//  MainMenuViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Gordon, Russell on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit
import CoreLocation

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

class MainMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CLLocationManagerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageStackView: UIStackView!
    @IBOutlet weak var showStartedMessage: UILabel!
    @IBOutlet weak var showStartedMessageHeight: NSLayoutConstraint!
    @IBOutlet weak var bonusContentUnlockedMessage: UILabel!
    @IBOutlet weak var bonusContentUnlockedMessageHeight: NSLayoutConstraint!
    
    // Background view for the stack view that displays message to user during show
    private lazy var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = chicagoGold
        view.layer.cornerRadius = 0
        return view
    }()
    
    // Object that we'll use to find location of the user
    var locationManager: CLLocationManager?
    
    // Define showing times of the musical
    // NOTE: REMOVE FIRST SHOWING BEFORE PUBLISHING FINAL PRODUCTION COMMIT
    //       Set first showing to time you want to test under production conditions
    //        Showing(start: "10:49 Mon, 25 Nov 2019 EST", end: "10:51 Mon, 25 Nov 2019 EST"),
    let forChicagoMusical: [Showing] = [

        Showing(start: "18:45 Tue, 26 Nov 2019 EST", end: "21:45 Tue, 26 Nov 2019 EST"),
        Showing(start: "18:45 Wed, 27 Nov 2019 EST", end: "21:45 Wed, 27 Nov 2019 EST"),
        Showing(start: "18:45 Thu, 28 Nov 2019 EST", end: "21:45 Thu, 28 Nov 2019 EST"),
        Showing(start: "18:45 Fri, 29 Nov 2019 EST", end: "21:45 Fri, 29 Nov 2019 EST"),

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
    
    // Area around the LCS theatre
    var theatreRegion: CLCircularRegion?
    
    // Time of last location update
    var timeIntervalSinceLastLocationUpdate: TimeInterval = 0
    
    // Whether this is the initial load
    // This is used to determine whether to display the "At the show?" banner
    var mainMenuDisplayedOnce = false

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
        
        // Set the alert message colors
        showStartedMessage.backgroundColor = chicagoGold
        bonusContentUnlockedMessage.backgroundColor = chicagoGold

        // Configure location services
        locationManager = CLLocationManager()
                
        // If run of shows hasn't concluded, ask for location services permission
        beforeShowsCompleteAskForLocationServicesPermission()

        // Assign this view as the delegate (will implement required methods to obtain user location)
        locationManager?.delegate = self
        
        #if DEBUG
        showPatronStateMessageForDebugPurposes()
        #endif
                
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Hide the navigation item on the root view controller
        self.navigationController?.setNavigationBarHidden(true, animated: false)
                
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Conditionally display "welcome to the show" message
        welcomeToTheShow()
        
        // Update to indicate that view has been displayed once
        mainMenuDisplayedOnce = true
        
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
                #if DEBUG
                // For debugging purposes, set time to a time during one of the showings
                dateTimeToCheck = forChicagoMusical[0].start.addingTimeInterval(TimeInterval(60))
                #endif
            case "Musical Numbers":
                performSegue(withIdentifier: "MusicalNumbers", sender: nil)
                #if DEBUG
                // For debugging purposes, set time to the actual time (to see if message disappears)
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
    
    // MARK: Location methods required by use of Location Services
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            #if DEBUG
            print("Authorized to use location services!")
            #endif
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        #if DEBUG
        print("Location was updated")
        #endif
        // Keep track of when location was updated
        timeIntervalSinceLastLocationUpdate = Date().timeIntervalSince1970
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        #if DEBUG
        print("Location failed to update")
        #endif
    }

    // MARK: Methods for handling presence at a show
    // Ask for permission to track location (only if show run has not completed)
    func beforeShowsCompleteAskForLocationServicesPermission() {

        // Request location access (for when App Is In Use only)
        #if DEBUG
            // (Always request authorization when in debug mode)
            locationManager?.requestWhenInUseAuthorization()
            // Define theatre region
            let theatre = CLLocationCoordinate2D(latitude: 44.439697265625, longitude: -78.26487680066764) // Actual theatre location
            //let theatre = CLLocationCoordinate2D(latitude: 37.785834, longitude: -122.406417) // Simulator location
            theatreRegion = CLCircularRegion(center: theatre, radius: 30, identifier: "theTheatre")
        #else
        // Ask for location services authorization in Eastern time zone only, and only during time interval that is prior to one hour past the end of the final showing
        if let finalShowing = forChicagoMusical.last {
            if Date().timeZone() == "EST" && Date() < finalShowing.end.addingTimeInterval(3600)  {
                // Ask for authorization
                locationManager?.requestWhenInUseAuthorization()

                // Define theatre region
                let theatre = CLLocationCoordinate2D(latitude: 44.439697265625, longitude: -78.26487680066764) // Actual theatre location
                theatreRegion = CLCircularRegion(center: theatre, radius: 30, identifier: "theTheatre")
            }
        }
        #endif
    }
    
    // Display "welcome to the show" message when in Eastern Time Zone and if show is on
    func welcomeToTheShow() {
        
        // If the current date and time is during a showing, ask the user to turn off the app
        // Eastern time zone only
        #if DEBUG
        #else
        dateTimeToCheck = Date()    // Gets current date and time
        #endif
        if let dateTimeToCheckWith = dateTimeToCheck, mainMenuDisplayedOnce == true  {
            if dateTimeToCheckWith.timeZone() == "EST" {
                
                #if DEBUG
                print("In the Eastern time zone...")
                #endif
                
                // During show time?
                if dateTimeToCheckWith.isDuring(showings: forChicagoMusical) {
                    
                    #if DEBUG
                    print("During the show 🤨")
                    #endif

                    // Decide what message to show
                    var showBonusContentUnlockedMessage = false
                    
                    // Request the user's location every ten minutes (10 seconds in debug)
                    #if DEBUG
                    let updateLocationInterval: TimeInterval = 10
                    #else
                    let updateLocationInterval: TimeInterval = 3600
                    #endif
                    if Date().timeIntervalSince1970 - timeIntervalSinceLastLocationUpdate > updateLocationInterval {
                        locationManager?.requestLocation()
                        #if DEBUG
                        print("Requested location update")
                        #endif
                    }
                    
                    // Is the user at the show?
                    if let currentLocation = locationManager?.location?.coordinate {
                        if let theatre = theatreRegion {
                            #if DEBUG
                            print("current location is:")
                            print("latitude: \(currentLocation.latitude)")
                            print("longitude: \(currentLocation.longitude)")
                            print("comparing against 30m radius around theatre location of:")
                            print("latitude: \(theatre.center.latitude)")
                            print("longitude: \(theatre.center.longitude)")
                            #endif
                            if theatre.contains(currentLocation) {
                                #if DEBUG
                                print("Result: in the theatre")
                                #endif
                                showBonusContentUnlockedMessage = true
                                recordAttendanceAtShowAs(present: true)
                            } else {
                                #if DEBUG
                                print("Result: NOT in the theatre")
                                #endif
                            }
                        }
                    }
                    
                    // Show the appropriate message
                    view.layoutIfNeeded() // force any pending operations to finish
                    if showBonusContentUnlockedMessage {
                        
                        UIView.animate(withDuration: 1.0, animations: { () -> Void in
                            // Ensure that both banners do not show at once
                            self.showStartedMessageHeight.constant = 0
                            self.bonusContentUnlockedMessageHeight.constant = 225
                            self.view.layoutIfNeeded()
                        })
                        
                    } else {
                        
                        UIView.animate(withDuration: 1.0, animations: { () -> Void in
                            // Ensure that both banners do not show at once
                            self.bonusContentUnlockedMessageHeight.constant = 0
                            self.showStartedMessageHeight.constant = 110
                            self.view.layoutIfNeeded()
                        })
                        
                    }

                } else {

                    // No longer during the show, so hide any message banner
                    #if DEBUG
                    print("Not during the show 👍🏻")
                    #endif
                    view.layoutIfNeeded() // force any pending operations to finish
                    UIView.animate(withDuration: 1.0, animations: { () -> Void in
                        self.showStartedMessageHeight.constant = 0
                        self.bonusContentUnlockedMessageHeight.constant = 0
                        self.view.layoutIfNeeded()
                    })

                }
                
            }
        }
        
    }
    
    // Add the background view to the stack view that contains the message
    private func pinBackground(_ view: UIView, to stackView: UIStackView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        stackView.insertSubview(view, at: 0)
        view.pin(to: stackView)
    }
    
    // Save to our Patron State property list, so that we know the user attended the show
    // We can use this later on to determine who sees the bonus content
    // See: https://learnappmaking.com/plist-property-list-swift-how-to/ for tutorial on reading and writing to property list files
    func recordAttendanceAtShowAs(present: Bool) {
        
        // Record whether show was attended
        var patronState = PatronState(attendedShow: present)
        patronState.attendedShow = present
        
        #if DEBUG
        print("Patron show attendance now set to: \(present)")
        #endif

        // Write to the property list
        // Get an encoder object
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml

        // Attempt to write to the property list file
        let writePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("PatronState.plist")
        do {
          #if DEBUG
          print("About to write patronState of \(patronState)")
          #endif
          let data = try encoder.encode(patronState)
          try data.write(to: writePath)
        } catch {
          #if DEBUG
          print("Error writing property list file: \(error)")
          #endif
        }
        
    }
    
    // We will use this function in the future to see if the patron should have access to bonus content
    func doesPatronGetBonusContent() -> Bool {

        // Set the path to read from
        let readPath: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("PatronState.plist")

        // Attempt to read from the path
        #if DEBUG
        print("About to open property list file...")
        #endif
        if let data = try? Data(contentsOf: readPath) {
          let decoder = PropertyListDecoder()
            if let patronState = try? decoder.decode(PatronState.self, from: data) {
                
                #if DEBUG
                print("About to read from property list file...")
                #endif

                return patronState.attendedShow
                
            }
        }

        // Occurs when there is no property list file yet
        return false
        
    }
    
    #if DEBUG
    func showPatronStateMessageForDebugPurposes() {

        // Read the state for this theatre patron
        let patronGetsBonusContent = doesPatronGetBonusContent()
        print("Patron gets bonus content: \(patronGetsBonusContent)")
        // Create an alert
        // Necessary because we lose debugging connection to Xcode when force quitting an app
        let alertController = UIAlertController(title: "Bonus Content", message: "Does user get bonus content? \(patronGetsBonusContent)", preferredStyle: .alert)
        // Create a default action for the alert
        // It is a button and we hae given the button text style and handler
        let defaultAction = UIAlertAction(title: "Close Alert", style: .default, handler: nil)
        // Now add the action to the alert controller
        alertController.addAction(defaultAction)
        // Now present the alert
        present(alertController, animated: true, completion: nil)
        
        // Reset attendance to false for debugging purposes
        print("Resetting bonus content flag...")
        recordAttendanceAtShowAs(present: false)

    }
    #endif

    #if DEBUG
    func showAlertWith(message: String) {

        // Create an alert
        // Necessary because we lose debugging connection to Xcode when force quitting an app
        let alertController = UIAlertController(title: "Location update", message: message, preferredStyle: .alert)
        // Create a default action for the alert
        // It is a button and we hae given the button text style and handler
        let defaultAction = UIAlertAction(title: "Close Alert", style: .default, handler: nil)
        // Now add the action to the alert controller
        alertController.addAction(defaultAction)
        // Now present the alert
        present(alertController, animated: true, completion: nil)
        
    }
    #endif
    
    

}
