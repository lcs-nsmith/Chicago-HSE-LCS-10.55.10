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
        
        // Set the navigation title item
        self.navigationItem.title = musicianSetFromTableView.name
        
        // Set details for this faculty member
        musicianHeadShot.image = UIImage(named: musicianSetFromTableView.ImageID)
        musicianInstrument.text = musicianSetFromTableView.instrument
        musicianBio.text = musicianSetFromTableView.Bio
        
        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()
        
    }
}
