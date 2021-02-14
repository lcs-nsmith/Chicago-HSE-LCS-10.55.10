//
//  Landing.swift
//  SwiftUI-Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2021-02-11.
//  Copyright © 2021 Gordon, Russell. All rights reserved.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            
            Image("banner")
                .resizable()
                .scaledToFit()
                .padding(.top, 5.0)
            
            List {
                Group {
                    Section(header: Text("The Show")) {
                        
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                        NavigationLink(destination: CrewListView()) {
                            Text("Crew")
                        }
                        Text("6")
                        Text("7")
                        Text("8")
                    }
                    Section(header: Text("Intermission")) {
                        NavigationLink(destination: TheatreLobbyArtDisplayView()) {
                            Text("Theatre Lobby Art Display")
                        }
                        Text("10")
                        Text("11")
                    }
                    Section(header: Text("Other")) {
                        NavigationLink(destination: OurMusicalTheatreProgramView()) {
                            Text("Our Musical Theatre Program")
                        }
                        Text("13")
                        Text("14")
                    }
                }
                .listRowBackground(Color.black)
            }
            .listStyle(GroupedListStyle())
            
            Spacer()
        }
        // Hide the navigation bar on this page to avoid blank space above banner
        .navigationBarHidden(true)
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandingView()
                .preferredColorScheme(.dark)
        }
    }
}
