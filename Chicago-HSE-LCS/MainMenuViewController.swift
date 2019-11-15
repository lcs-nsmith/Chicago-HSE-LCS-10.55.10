//
//  MainMenuViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Gordon, Russell on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController, UITableViewDataSource {
    
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    var mainMenuItems: [MainMenuItem] = [
        
        MainMenuItem(name: "Cast"),
        MainMenuItem(name: "Crew"),
        MainMenuItem(name: "Musicians"),
        MainMenuItem(name: "Faculty"),
        MainMenuItem(name: "Acknowledgements")
        
    ]
    
    // MARK: Initializer
    
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Set a zero-height footer so that no blank cells show after the list of menu items
        tableView.tableFooterView = UIView()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    // How many sections are in the table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // How many rows to show in that one section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // On the first section, return the count of menu items
        // For any other section, return 0
        if section == 0 {
            return mainMenuItems.count
        } else {
            return 0
        }
        
    }
    
    // Configure the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create an object of the dynamic cell "PlainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlainCell", for: indexPath)
        
        // Depending on the section, fill the textLabel with the relevant text
        cell.textLabel?.text = mainMenuItems[indexPath.row].name
        
        // Return the configured cell
        return cell
        
    }
    
    
}
