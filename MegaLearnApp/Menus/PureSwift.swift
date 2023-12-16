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
<<<<<<< HEAD:MegaLearnApp/Menus/PureSwift.swift
//                .navigationBarTitle("Pure Swift")
=======
                .navigationBarTitle("Pure Swift")
>>>>>>> main:MegaLearnApp/PureSwiftMenuView.swift
            }
        }
    }
}

struct PureSwiftMenu_Previews: PreviewProvider {
    static var previews: some View {
        PureSwiftMenuView()
    }
}
