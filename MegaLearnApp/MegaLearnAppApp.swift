//
//  MegaLearnAppApp.swift
//  MegaLearnApp
//
//  Created by Lars Löffler on 20.12.22.
//

import SwiftUI

@main
struct MegaLearnAppApp: App {
    var body: some Scene {
        WindowGroup {
            MainMenuView()
        }
    }
}

struct MegaLearnAppApp_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
