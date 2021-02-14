//
//  CrewSpecialTeamsDetailView.swift
//  SwiftUI-Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2021-02-14.
//  Copyright © 2021 Gordon, Russell. All rights reserved.
//

import SwiftUI

struct CrewSpecialTeamsDetailView: View {
    
    var crewMember: Crew
    
    var body: some View {
        
        ScrollView {
            
            HStack {
                
                Text(crewMember.bio)
                
                Spacer()
                
            }
            .padding(.horizontal, horizontalTextPadding)

        }
        // Set page title
        .navigationTitle(crewMember.name)
        // Ensures page title appears in "small" mode
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct CrewSpecialTeamsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CrewSpecialTeamsDetailView(crewMember: specialTeams.first!)
                .preferredColorScheme(.dark)
        }
    }
}
