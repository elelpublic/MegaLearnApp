//
//  PureSwiftMenu.swift
//  MegaLearn
//
//  Created by Lars Löffler on 20.12.22.
//

import SwiftUI

struct PureSwiftMenuView: View {
    var body: some View {
        NavigationView {
            NavigationLink( destination: {
                PureSwift_Strings()
            }, label: {
                Text( "Strings" )
            })
            .navigationBarTitle("Pure Swift")
//            List {
//                Text("PureSwiftMenu")
//                Text("PureSwiftMenu")
//                Text("PureSwiftMenu")
//                Text("PureSwiftMenu")
//            }
//            .navigationTitle("Pure Swift")
        }
    }
}

struct PureSwiftMenu_Previews: PreviewProvider {
    static var previews: some View {
        PureSwiftMenuView()
    }
}
