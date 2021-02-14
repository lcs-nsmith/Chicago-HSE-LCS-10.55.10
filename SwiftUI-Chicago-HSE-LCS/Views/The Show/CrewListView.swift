//
//  Crew.swift
//  SwiftUI-Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2021-02-13.
//  Copyright © 2021 Gordon, Russell. All rights reserved.
//

import SwiftUI

struct CrewListView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        
        VStack {
            
            SearchBarView(text: $searchText)
            
            List {
                
                Group {
                    
                    Section(header: Text("Primary Crew")) {
                        ForEach(primaryCrewMembers.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { someCrewMember in
                            NavigationLink(destination: CrewPrimaryDetailView(crewMember: someCrewMember)) {
                                Text(someCrewMember.name)
                            }
                        }
                    }
                    
                    Section(header: Text("Special Teams")) {
                        ForEach(specialTeams.filter({ searchText.isEmpty ? true : $0.bio.contains(searchText) })) { team in
                            NavigationLink(destination: CrewSpecialTeamsDetailView(crewMember: team)) {
                                Text(team.name)
                            }
                        }
                    }
                    
                }
                .listRowBackground(Color.black)
            }
            // Group lists, same style as landing page
            .listStyle(GroupedListStyle())
            // Set page title
            .navigationTitle("Crew")
            // Ensures page title appears in "small" mode
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
    }
}

struct CrewListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CrewListView()
                .preferredColorScheme(.dark)
        }
    }
}
