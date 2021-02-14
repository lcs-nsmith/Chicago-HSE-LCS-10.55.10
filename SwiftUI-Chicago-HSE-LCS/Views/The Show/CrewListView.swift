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
                        
                        
                        ForEach(primaryCrewMembers.filter({ crewMember in
                                                                if !searchText.isEmpty {
                                                                    // Only return true when this crew member's name contains the search text
                                                                    return crewMember.name.contains(searchText)
                                                                } else {
                                                                    // When there is no search text, return every crew member
                                                                    return true
                                                                }
                                                            })
                        ) { someCrewMember in
                            NavigationLink(destination: CrewPrimaryDetailView(crewMember: someCrewMember)) {
                                Text(someCrewMember.name)
                            }
                        }
                    }
                    
                    Section(header: Text("Special Teams")) {
                        ForEach(specialTeams.filter({ team in
                                                        if !searchText.isEmpty {
                                                            // Only return true when this special team's bio contains the search text
                                                            return team.bio.contains(searchText)
                                                        } else {
                                                            // When there is no search text, return every special team
                                                            return true
                                                        }
                                                    })
                        ) { team in
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
