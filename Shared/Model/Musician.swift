//
//  MusicianStructure.swift
//  Chicago-HSE-LCS
//
//  Created by Davidson, Liam on 2019-11-17.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import Foundation

// MARK: Definition
struct Musician {
    
    var name: String
    var instrument: String
    var bio: String
    var imageID: String
    
}

// MARK: Data
var studentMusicians: [Musician] = [
    
    Musician(name: "Aidan Melville", instrument: "Saxophone", bio: """
            Aidan Melville is a member of the Concert Band, Jazz Band, and Lorelei Choir. He has been playing the saxophone for five years and has been in various bands for four years at LCS. He loves playing jazz and is extremely excited to be performing in Chicago this year.
            """, imageID:"aidan"),
    
    Musician(name: "Dorothy Li", instrument: "Flute", bio: """
            This is Dorothy's fourth year at LCS. She's been playing the clarinet since Grade 3. Dorothy has played in different concert bands and orchestras throughout the years. However, it's her first time being a member of the pit band and playing live in a musical. She is very excited to perform in Chicago!
            """, imageID:"dorothy"),
    
    Musician(name: "Jeewoo Lee", instrument: "Trumpet", bio: """
            Jeewoo plays the trumpet as part of the pit band in this production. He is also a member of the Concert Band at LCS. Getting cut from soccer is what spurred him to step out from his comfort zone and audition for this production. He's glad he took the leap of faith and is excited to perform for audiences during the Chicago run at LCS.
            """, imageID:"jeewoo"),
    
    Musician(name: "Prajina Salvarajah", instrument: "Saxophone", bio: """
            This is Prajina’s first time being part of an LCS production. She's been playing the clarinet since Grade 5 and learned how to play the tenor saxophone last year. She has been a member of the LCS Concert Band for one year and has recently joined the Jazz Band. She is thrilled to play in the live pit band for the Chicago musical.
            """, imageID:"prajina"),
    
    Musician(name: "Rachel Xu", instrument: "Flute", bio: """
            Rachel is from Beijing, China and it is her fourth year at Lakefield College School. This is Rachel’s first time participating in a pit band. She has been playing flute since Grade 1, and has had experience doing a duet with clarinet, as well as a trio with a cello and flute. Rachel has also been a member of the LCS Concert Band for four years. She is excited to be performing in Chicago, and hopes you enjoy the show!
            """, imageID:"rachel"),
    
    Musician(name: "Ryosuke Togawa", instrument: "Trumpet", bio: """
            Ryosuke plays the trumpet as part of the pit band in this production. He is as passionate about cooking food he is about playing the trumpet!
            """, imageID:"ryosuke"),
    
]

var otherMusicians: [Musician] = [
    
    Musician(name: "Community Musicians", instrument: "", bio: """
        Kelsey Van Blarcom (Piano 1)
        Teala Kozmik (Piano 2)
        Cydney Kamping (Reed 1)
        Christine Williamson (Reed 2)
        Bruce Cole (Reed 3)
        Doug Sutherland (Trumpet)
        Peter Hanmore (Trombone)
        Al Pounsett (Banjo)
        Sam Quinn (Bass)
        Nick Gilroy (Drums)
        Sarah Young (Flute)
        """, imageID:""),
    
]
