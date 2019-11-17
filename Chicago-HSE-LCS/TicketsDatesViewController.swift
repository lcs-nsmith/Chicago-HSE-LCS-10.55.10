//
//  TicketsDatesViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Yang, Selena on 2019/11/17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class TicketsDatesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Show the navigation item
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        // Do any additional setup after loading the view.
        
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
