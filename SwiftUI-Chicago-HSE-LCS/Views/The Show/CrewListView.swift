//
//  CrewListView.swift
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
            
            // Include a search bar to filter the lists below
            SearchBarView(text: $searchText)
                .padding(.top, 20)
            
            // Show a list with two sections
            List {
                
                Group {
                    
                    // Primary Crew
                    Section(header: Text("Primary Crew")) {
                        
                        // Iterate over all defined crew members
                        ForEach(primaryCrewMembers.filter({ crewMember in
                                                                // When a search is active, filter the list of crew
                                                                if !searchText.isEmpty {
                                                                    // Only return true when this crew member's name contains the search text
                                                                    return crewMember.name.contains(searchText)
                                                                } else {
                                                                    // When there is no search text, return every crew member
                                                                    return true
                                                                }
                                                            })
                        ) { someCrewMember in
                            
                            // Make a navigation link for each crew member in the list
                            NavigationLink(destination: CrewPrimaryDetailView(crewMember: someCrewMember)) {
                                Text(someCrewMember.name)
                            }
                        }
                    }

                    // Special Teams
                    Section(header: Text("Special Teams")) {

                        // Iterate over all defined special teams
                        ForEach(specialTeams.filter({ team in
                                                        // When a search is active, filter the list of special teams
                                                        if !searchText.isEmpty {
                                                            // Only return true when this special team's bio contains the search text
                                                            return team.bio.contains(searchText)
                                                        } else {
                                                            // When there is no search text, return every special team
                                                            return true
                                                        }
                                                    })
                        ) { team in
                            
                            // Make a navigation link for each special team in the list
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
