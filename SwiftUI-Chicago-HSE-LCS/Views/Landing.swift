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
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                    }
                    Section(header: Text("Intermission")) {
                        Text("5")
                        Text("6")
                        Text("7")
                    }
                    Section(header: Text("Other")) {
                        Text("8")
                        Text("9")
                        Text("10")
                    }
                }
                .listRowBackground(Color.black)
            }
            .listStyle(GroupedListStyle())
            
            Spacer()
        }
    }
}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        Landing()
            .preferredColorScheme(.dark)
    }
}
