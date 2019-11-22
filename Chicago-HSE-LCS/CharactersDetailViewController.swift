//
//  CharactersDetailViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Maxwell Lu on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class CharactersDetailViewController: UIViewController {
    
    // MARK: Properties
    // The emoji to display detail about
    var characterToDisplay: Characters?

    // Outlets to connect this controller to the view
    @IBOutlet weak var characterHeadShot: UIImageView!
    @IBOutlet weak var playedBy: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var characterActionShot: UIImageView!
    
    // Set the status bar text to be white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Get a reference to the emoji set in the table view prior to segue
        guard let characterSetFromTableView = characterToDisplay else {
            return
        }
        
        // Set the navigation title item
        self.navigationItem.title = characterSetFromTableView.characterName
        
        // Set details for this character
        // Set photo for this character, if one exists
        if characterSetFromTableView.imageId.isEmpty {
            characterHeadShot.isHidden = true
        } else {
            characterHeadShot.image = UIImage(named: characterSetFromTableView.imageId)
        }
        playedBy.text = characterSetFromTableView.playedBy
        // Set action photo for this character, if one exists
        if characterSetFromTableView.actionImageId.isEmpty {
            characterActionShot.isHidden = true
        } else {
            characterActionShot.image = UIImage(named: characterSetFromTableView.actionImageId)
        }

        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()

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
