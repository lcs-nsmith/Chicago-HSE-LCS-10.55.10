//
//  TimeDateHelpers.swift
//  Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2019-11-24.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import Foundation

// Set the date and time format to be used throughout
let defaultDateFormat = "HH:mm E, d MMM y zzz"
let defaultTimeZoneFormat = "zzz"

extension Date {
    
    // Return a formatted date
    func formatted() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = defaultDateFormat
        return formatter.string(from: self)
    }
    
    // Return the time zone
    func timeZone() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = defaultTimeZoneFormat
        return formatter.string(from: self)
    }
    
    // Is the current date during a showing of the musical?
    func isDuring(showings: [Showing]) -> Bool {
        
        // Iterate over showings and see whether the date is after the start and before the end
        for show in showings {
            
            if self >= show.start && self <= show.end {
                return true
            }
            
        }
        
        // If we made it here, the date is not during one of the showings
        return false
        
    }
}
