//
//  MainCategoriesView.swift
//  MegaLearn
//
//  Created by Lars Löffler on 20.12.22.
//

import SwiftUI

struct Main: View {
    var body: some View {
        TabView {
            PureSwift().tabItem {
                Label( "PureSwift", systemImage: "swift" )
            }
            Navigation().tabItem {
                Label( "Navigation", systemImage: "tree" )
            }
            Layout().tabItem {
                Label( "Layout", systemImage: "uiwindow.split.2x1" )
            }
            Animation().tabItem {
                Label( "Animation", systemImage: "play.circle" )
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
