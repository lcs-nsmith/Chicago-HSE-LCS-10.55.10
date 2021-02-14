//
//  Landing.swift
//  SwiftUI-Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2021-02-11.
//  Copyright © 2021 Gordon, Russell. All rights reserved.
//

import SwiftUI

struct Landing: View {
    var body: some View {
        VStack {
            
            Image("banner")
                .resizable()
                .scaledToFit()
            
            List {
                Group {
                    Section(header: Text("The Show")) {
                        
                        NavigationLink(destination: Text("Write crew view here")) {
                            Text("Crew")
                        }
                        Text("2")
                        Text("3")
                        Text("4")
                    }
                    Section(header: Text("Intermission")) {
                        NavigationLink(destination: Text("Write Theatre Lobby Art Display view here")) {
                            Text("Theatre Lobby Art Display")
                        }
                        Text("6")
                        Text("7")
                    }
                    Section(header: Text("Other")) {
                        NavigationLink(destination: Text("Write Our Musical Theatre Program view here")) {
                            Text("Our Musical Theatre Program")
                        }
                        Text("9")
                        Text("10")
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

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Landing()
                .preferredColorScheme(.dark)
        }
    }
}
