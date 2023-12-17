//
//  PureSwiftMenu.swift
//  MegaLearn
//
//  Created by Lars Löffler on 20.12.22.
//

import SwiftUI

struct PureSwift: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink( destination: {
                    PureSwift_Strings()
                }, label: {
                    Text( "Strings" )
                })
                NavigationLink( destination: {
                    PureSwift_Misc()
                }, label: {
                    Text( "Misc" )
                })
//                .navigationBarTitle("Pure Swift")
            }
        }
    }
}

struct PureSwiftMenu_Previews: PreviewProvider {
    static var previews: some View {
        PureSwift()
    }
}
