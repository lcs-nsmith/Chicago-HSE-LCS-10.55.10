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
                .padding(.top, 10.0)
            
            List {
                Group {
                    Section(header: Text("The Show")) {
                        
                        //                        NavigationLink(destination: TicketsAndDatesView()) {
                        HStack{
                            Image(systemName: "ticket")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                            Text("Tickets and Dates")
                        }
                        //                        }
                        //                        NavigationLink(destination: MusicalNumbersView()) {
                        HStack{
                            Image(systemName: "music.note.list")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                            Text("Musical Numbers")
                        }
                        //                        }
                        
                        //                        NavigationLink(destination: CharactersListView()) {
                        HStack{
                            Image(systemName: "person.crop.artframe")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                            Text("Characters")
                        }
                        //
                        
                        //                        NavigationLink(destination: TicketsAndDatesView()) {
                        HStack{
                            Image(systemName: "person.3.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                            Text("Cast")
                        }
                        //
                        
                        NavigationLink(destination: CrewListView()) {
                            HStack{
                                Image(systemName: "person.3.sequence")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                                Text("Crew")
                            }
                        }
                        
                            //                        NavigationLink(destination: MusiciansListView()) {
                            HStack{
                                Image(systemName: "guitars")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                                Text("Musicians")
                            }
                            //
                            
                            //                        NavigationLink(destination: FacultyListView()) {
                            HStack{
                                Image(systemName: "person.text.rectangle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                                Text("Faculty")
                            }
                            //
                            
                            //                        NavigationLink(destination: ProductionTeamNotesView()) {
                            HStack{
                                Image(systemName: "list.and.film")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                                Text("Production Team Notes")
                            }
                            //
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
