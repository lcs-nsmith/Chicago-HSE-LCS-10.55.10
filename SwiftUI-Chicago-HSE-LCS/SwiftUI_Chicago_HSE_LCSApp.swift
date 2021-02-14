//
//  SwiftUI_Chicago_HSE_LCSApp.swift
//  SwiftUI-Chicago-HSE-LCS
//
//  Created by Russell Gordon on 2021-02-11.
//  Copyright © 2021 Gordon, Russell. All rights reserved.
//

import SwiftUI

@main
struct SwiftUI_Chicago_HSE_LCSApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Landing()
                    .preferredColorScheme(.dark)
            }
        }
    }
}
