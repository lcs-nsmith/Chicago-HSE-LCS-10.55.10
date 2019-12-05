//
//  Showing.swift
//  Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2019-11-24.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import Foundation

// Define the start and end of a showing
struct Showing {
    
    let start: Date
    let end: Date
        
    init(start: String, end: String) {
        
        // Format the dates provided
        let formatter = DateFormatter()
        formatter.dateFormat = defaultDateFormat
        
        // Define the show start
        if let startDate = formatter.date(from: start) {
            self.start = startDate
        } else {
            // If an invalid date, set date to current time
            self.start = Date()
        }
        
        // Define the show end
        if let endDate = formatter.date(from: end) {
            self.end = endDate
        } else {
            // If an invalid date, set date to current time
            self.end = Date()
        }
        
    }
    
}
