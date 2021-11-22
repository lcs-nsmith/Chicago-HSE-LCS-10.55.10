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
                                .frame(width: 30, height: 30)
                            Text("Tickets and Dates")
                        }
                        //                        }
                        //                        NavigationLink(destination: MusicalNumbersView()) {
                        HStack{
                            Image(systemName: "music.note.list")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Musical Numbers")
                        }
                        //                        }
                        
                        //                        NavigationLink(destination: CharactersListView()) {
                        HStack{
                            Image(systemName: "person.crop.artframe")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Characters")
                        }
                        //
                        
                        //                        NavigationLink(destination: TicketsAndDatesView()) {
                        HStack{
                            Image(systemName: "person.3.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Cast")
                        }
                        //
                        
                        NavigationLink(destination: CrewListView()) {
                            HStack{
                                Image(systemName: "person.3.sequence")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                Text("Crew")
                            }
                        }
                        
                        //                        NavigationLink(destination: MusiciansListView()) {
                        HStack{
                            Image(systemName: "guitars")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Musicians")
                        }
                        //
                        
                        //                        NavigationLink(destination: FacultyListView()) {
                        HStack{
                            Image(systemName: "person.text.rectangle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Faculty")
                        }
                        //
                        
                        //                        NavigationLink(destination: ProductionTeamNotesView()) {
                        HStack{
                            Image(systemName: "list.and.film")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Production Team Notes")
                        }
                        //
                    }
                    .listRowBackground(Color.black)
                    
                    Section(header: Text("Intermission")) {
                        Group {
                            NavigationLink(destination: TheatreLobbyArtDisplayView()) {
                                HStack{
                                    Image(systemName: "paintpalette")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                    Text("Theatre Lobby Art Display")
                                }
                            }
                            //                            NavigationLink(destination: ConcessionsView()) {
                            HStack{
                                Image("popcornSymbolUpscaled")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                Text("Concessions")
                            }
                            //                        }
                            
                            //                            NavigationLink(destination: WashroomLocationsView()) {
                            HStack{
                                Image("bathroomSign.png")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                Text("Washroom Locations")
                            }
                            //                        }
                            
                            Section(header: Text("Other")) {
                                Group {
                                    NavigationLink(destination: OurMusicalTheatreProgramView()) {
                                        HStack{
                                            Image(systemName: "theatermasks")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30)
                                            Text("Our Musical Theatre Program")
                                        }
                                    }
                                    //                            NavigationLink(destination: AboutThisAppView()) {
                                    HStack{
                                        Image(systemName:"apps.iphone")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30, height: 30)
                                        Text("About This App")
                                    }
                                    //                        }
                                    
                                    //                            NavigationLink(destination: AcknowledgementsAndLegalView()) {
                                    HStack{
                                        Image(systemName:"scroll")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30, height: 30)
                                        Text("Acknowledgements And Legal")
                                    }
                                    //                        }
                                }
                            }
                        }
                    }
                    .listRowBackground(Color.black)

                    
                }
                // Hide the navigation bar on this page to avoid blank space above banner
                .navigationBarHidden(true)
            }
            .listStyle(GroupedListStyle())
        }
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
