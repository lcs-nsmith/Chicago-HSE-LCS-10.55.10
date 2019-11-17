//
//  FacultyDetailViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Gordon, Russell on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class FacultyDetailViewController: UIViewController {
    
    // MARK: Properties
    // The emoji to display detail about
    var facultyMemberToDisplay: Faculty?

    // Outlets to connect this controller to the view
    @IBOutlet weak var facultyHeadShot: UIImageView!
    @IBOutlet weak var facultySupportRole: UILabel!
    @IBOutlet weak var facultyBio: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    // Set the status bar text to be white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Get a reference to the emoji set in the table view prior to segue
        guard let facultySetFromTableView = facultyMemberToDisplay else {
            return
        }
        
        // Set the navigation title item
        self.navigationItem.title = facultySetFromTableView.name
        
        // Set details for this faculty member
        facultyHeadShot.image = UIImage(named: facultySetFromTableView.imageId)
        facultySupportRole.text = facultySetFromTableView.supportRole
        facultyBio.text = facultySetFromTableView.bio
        
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
