//
//  MusicianDetailViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Davidson, Liam on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class MusicianDetailViewController: UIViewController {
    
    // MARK: Properties
    // The emoji to display detail about
    var bandMemberToDisplay: Musician?
    
    // Outlets to connect this controller to the view
    @IBOutlet weak var musicianHeadShot: UIImageView!
    @IBOutlet weak var musicianInstrument: UILabel!
    @IBOutlet weak var labelInstrument: UILabel!
    @IBOutlet weak var labelBio: UILabel!
    @IBOutlet weak var musicianBio: UILabel!
    
    // Set the status bar text to be white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get a reference to the emoji set in the table view prior to segue
        guard let musicianSetFromTableView = bandMemberToDisplay else {
            return
        }
        
        // Add an exception for community musicians
        switch musicianSetFromTableView.name {
        case "Community Musicians":
            
            // Set the navigation title item
            self.navigationItem.title = musicianSetFromTableView.name
            
            // Hide items not needed
            musicianHeadShot.isHidden = true
            labelInstrument.isHidden = true
            musicianInstrument.isHidden = true
            labelBio.isHidden = true
            musicianBio.text = musicianSetFromTableView.bio
            
        default:
            // Set the navigation title item
            self.navigationItem.title = musicianSetFromTableView.name
            
            // Set details for this faculty member
            musicianHeadShot.image = UIImage(named: musicianSetFromTableView.imageID)
            musicianInstrument.text = musicianSetFromTableView.instrument
            musicianBio.text = musicianSetFromTableView.bio
        }
        
        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()
        
    }
}
