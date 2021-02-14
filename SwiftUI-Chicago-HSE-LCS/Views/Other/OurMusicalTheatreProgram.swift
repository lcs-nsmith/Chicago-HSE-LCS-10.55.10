//
//  OurMusicalTheatreProgram.swift
//  SwiftUI-Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2021-02-13.
//  Copyright © 2021 Gordon, Russell. All rights reserved.
//

import SwiftUI

struct OurMusicalTheatreProgram: View {
    var body: some View {
        
        ScrollView {
            
            Image("artsAtLakefieldWhiteOnBlack")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 50)
            
            Text("""
                Lakefield College School’s well-rounded approach to education has a longstanding reputation of educating artists and athletes for life. We are known for our outstanding drama productions and our musicals have long garnered the attention and support of our local media and the greater community.

                Novice and experienced students find opportunities to explore a full range of activities both behind and on stage—as many as 65 students may be involved in one production. Valuable skills are developed through live performance, technical and production work. Students fine-tune their ability to sing, dance, act, direct, build sets, design lights and produce projects of their own design. For the first time this year, student musicians will play alongside professionals from our community in our live pit band.

                During the fall, winter and spring terms, our students are dedicated to developing all aspects of their performance abilities in preparation for our annual drama productions, instrumental and vocal music performances and dance showcases.
                """)
                .padding(.horizontal, horizontalTextPadding)
                // This next view modifier prevents seemingly arbitrary truncation of text inside the Text view
                .fixedSize(horizontal: false, vertical: true)
            
        }
        // Set page title
        .navigationTitle("Our Musical Theatre Program")
        // Ensures page title appears in "small" mode
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}

struct OurMusicalTheatreProgram_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OurMusicalTheatreProgram()
                .preferredColorScheme(.dark)
        }
    }
}
