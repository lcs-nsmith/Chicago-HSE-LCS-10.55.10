//
//  CrewPrimaryDetailView.swift
//  SwiftUI-Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2021-02-14.
//  Copyright © 2021 Gordon, Russell. All rights reserved.
//

import SwiftUI

struct CrewPrimaryDetailView: View {
    
    var crewMember: Crew
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Image(crewMember.imageId)
                .resizable()
                .scaledToFit()
                Group {
                    
                    Text("Job")
                        .font(.title2)
                    
                    Text(crewMember.job)
                    
                    if !crewMember.bio.isEmpty {
                        
                        Text("Bio")
                            .font(.title2)
                        
                        Text(crewMember.bio)
                    }
    
                }
                .padding(.horizontal, horizontalTextPadding)

            }
        
        }
        .navigationTitle(crewMember.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct CrewPrimaryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CrewPrimaryDetailView(crewMember: primaryCrewMembers.first!)
                .preferredColorScheme(.dark)
        }
    }
}
