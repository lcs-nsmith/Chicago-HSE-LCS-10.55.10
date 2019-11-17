//
//  CastDetailTableViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Lee, Jeewoo on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class CastDetailViewController: UITableViewController {

    
    var castMemberToDisplay: CastMember?
    
    // Outlets to connect this controller to the view
    @IBOutlet weak var castHeadShot: UIImageView!
    @IBOutlet weak var castRole: UILabel!
    @IBOutlet weak var castBio: UILabel!
    @IBOutlet weak var castView: UIScrollView!
    
    // Set the status bar text to be white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Get a reference to the emoji set in the table view prior to segue
        guard let castSetFromTableView = castMemberToDisplay else {
            return
        }
        
        // Set the navigation title item
        self.navigationItem.title = castSetFromTableView.name
        
        // Set details for this faculty member
        castHeadShot.image = UIImage(named: castSetFromTableView.imageId)
        castRole.text = castSetFromTableView.character
        castBio.text = castSetFromTableView.bio
        
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
