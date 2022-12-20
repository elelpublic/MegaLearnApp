//
//  MainCategoriesView.swift
//  MegaLearn
//
//  Created by Lars Löffler on 20.12.22.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        TabView {
            PureSwiftMenuView().tabItem {
                Label( "PureSwift", systemImage: "swift" )
            }
            LayoutMenuView().tabItem {
                Label( "Layout", systemImage: "uiwindow.split.2x1" )
            }
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
