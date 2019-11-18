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
    @IBOutlet weak var crewBio: UILabel!
    @IBOutlet weak var crewJob: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
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
        
        // Set the navigation title item
        self.navigationItem.title = crewSetFromTableView.name
        
        // Set details for this faculty member
        crewHeadShot.image = UIImage(named: crewSetFromTableView.imageId)
        crewJob.text = crewSetFromTableView.job
        crewBio.text = crewSetFromTableView.bio
        
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