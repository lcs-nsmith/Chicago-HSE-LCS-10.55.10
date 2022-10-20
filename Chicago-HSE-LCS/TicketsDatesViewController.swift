//
//  TicketsDatesViewController.swift
//  Chicago-HSE-LCS
//
//  Created by Yang, Selena on 2019/11/17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class TicketsDatesViewController: UIViewController {

    // Set the status bar text to be white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Signal need to update the status bar
        self.setNeedsStatusBarAppearanceUpdate()
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
    
    func openTicketsWebsite() {
        guard let url = URL(string: "https://www.universe.com/events/chicago-high-school-edition-tickets-WX743Y") else {
            return
        }
        UIApplication.shared.open(url)
    }
    
    @IBAction func openTicketsFromSeatingLabel(_ sender: Any) {
        openTicketsWebsite()
    }
    
    @IBAction func openTicketsFromReminderLabel(_ sender: Any) {
        openTicketsWebsite()
    }
    
    
}
