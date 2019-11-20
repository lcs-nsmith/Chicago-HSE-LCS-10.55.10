//
//  ProductionTeamNotesViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2019-11-18.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class ProductionTeamNotesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()
        
        // Do any additional setup after loading the view.
    }
    
    // Runs every time the view appears (not just once when initially loaded)
    override func viewWillAppear(_ animated: Bool) {

        // Show the navigation item
        // Fixes bug where slow slide to unwind segue that is cancelled causes navigation bar to disappear
        self.navigationController?.setNavigationBarHidden(false, animated: false)

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
