//
//  Faculty.swift
//  Chicago-HSE-LCS
//
//  Created by Gordon, Russell on 2019-11-14.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import Foundation

// MARK: Definition
struct Faculty {
    
    var name: String
    var supportRole: String
    var bio: String
    var imageId: String
    
}

// MARK: Data
var facultyMembers : [Faculty] = [
    Faculty(name: "Mr. Geoff Bemrose", supportRole: "Director and Producer", bio: "", imageId: "geoffBemrose"),
    
    Faculty(name: "Ms. Rachel Bemrose", supportRole: "Director and Choreographer", bio: "", imageId: "rachelBemrose"),
    
    Faculty(name: "Ms. Pamela Birrell", supportRole: "Vocal Director", bio: "", imageId: "pamelaBirrell"),

    Faculty(name: "Ms. Cathy Colling", supportRole: "Music Director and Conductor", bio: "", imageId: "cathyColling"),

    Faculty(name: "Ms. Tina St. John", supportRole: "Production Team Assistant", bio: "", imageId: "tinaStJohn"),

    Faculty(name: "Ms. Amber Claassen", supportRole: "Set Decoration and Prop Design", bio: "", imageId: "amberClassen"),

    Faculty(name: "Ms. Mary Parulski", supportRole: "Costume Design", bio: "", imageId: ""),

    Faculty(name: "Mr. Iain Beaumont", supportRole: "Box Office Manager and Front of House", bio: "", imageId: "iainBeaumont"),

    Faculty(name: "Ms. June Saunders", supportRole: "Set Construction", bio: "", imageId: ""),

    Faculty(name: "Ms. Tayler Morencie", supportRole: "Set Painting", bio: "", imageId: ""),

]
