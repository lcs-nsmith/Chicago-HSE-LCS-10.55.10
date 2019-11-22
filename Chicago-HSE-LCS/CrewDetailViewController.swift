//
//  CrewDetailViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Anstoetz, Nick on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class CrewDetailViewController: UIViewController {
    
    // MARK: Properties
    // The emoji to display detail about
    var crewMemberToDisplay: Crew?
    
    // Outlets to connect this controller to the view
    @IBOutlet weak var crewHeadShot: UIImageView!    
    @IBOutlet weak var labelBio: UILabel!
    @IBOutlet weak var labelJob: UILabel!
    @IBOutlet weak var crewBio: UILabel!
    @IBOutlet weak var crewJob: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get a reference to the emoji set in the table view prior to segue
        guard let crewSetFromTableView = crewMemberToDisplay else {
            return
        }
        
        // Add exceptions for special teams
        switch crewSetFromTableView.name {
            
        case "Costume Design Assistants":
            // Set the navigation title item
            self.navigationItem.title = "Costume Design Assistants"
            
            // Hide unnecessary items
            hideItemsForSpecialTeams()
            
            // Set names
            crewBio.text = """
            Amy Shin
            Eno Chen
            Judy Yu
            Quang Bui
            """
            
        case "Set Construction":
            // Set the navigation title item
            self.navigationItem.title = "Set Construction"
            
            // Hide unnecessary items
            hideItemsForSpecialTeams()
            
            // Set names
            crewBio.text = """
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
            """
            
        case "Set Painting":
            // Set the navigation title item
            self.navigationItem.title = "Set Painting"
            
            // Hide unnecessary items
            hideItemsForSpecialTeams()
            
            // Set names
            crewBio.text = """
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
            """
            
        case "Hair and Make-up":
            // Set the navigation title item
            self.navigationItem.title = "Hair and Make-up"
            
            // Hide unnecessary items
            hideItemsForSpecialTeams()
            
            // Set names
            crewBio.text = """
            Amy Shin
            Chloe Traviss
            Elizabeth Moody
            Jami Lowry
            Judy Yu
            Rachel Bemrose
            Tori Whitmore
            """
            
        case "Posters":
            // Set the navigation title item
            self.navigationItem.title = "Posters"
            
            // Hide unnecessary items
            hideItemsForSpecialTeams()
            
            // Set names
            crewBio.text = """
            Stephanie Wilcox
            Drew Antzis
            """
            
        default:
            // Set the navigation title item
            self.navigationItem.title = crewSetFromTableView.name
            
            // Set crew image, if it exists
            if crewSetFromTableView.imageId.isEmpty {
                crewHeadShot.isHidden = true
            } else {
                crewHeadShot.image = UIImage(named: crewSetFromTableView.imageId)
            }
            
            // Set crew job
            crewJob.text = crewSetFromTableView.job
            
            // Set crew bio, if it exists
            if crewSetFromTableView.bio.isEmpty {
                labelBio.isHidden = true
                crewBio.isHidden = true
            } else {
                crewBio.text = crewSetFromTableView.bio
            }
            
        }
        
        
        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()
        
    }
    
    // Hide items not needed for special teams
    func hideItemsForSpecialTeams() {
        crewHeadShot.isHidden = true
        labelJob.isHidden = true
        crewJob.isHidden = true
        labelBio.isHidden = true
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
