//
//  Characters.swift
//  Chicago-HSE-LCS
//
//  Created by Maxwell Lu on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import Foundation

struct Characters {
    var characterName: String
    var playedBy: String
    var description: String
    var imageId: String
    var actionImageId: String
    
    init(characterName: String, playedBy: String, description: String, imageId: String, actionImageId: String = "") {
        self.characterName = characterName
        self.playedBy = playedBy
        self.description = description
        self.imageId = imageId
        self.actionImageId = actionImageId
    }
}
