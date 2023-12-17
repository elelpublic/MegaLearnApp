//
//  LayoutMenu.swift
//  MegaLearn
//
//  Created by Lars Löffler on 20.12.22.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink( destination: {
                    Layout_Stacks()
                }, label: {
                    Text( "Stacks" )
                })
//                .navigationBarTitle("Layout")
            }
        }
    }
}

struct Layout_Previews: PreviewProvider {
    static var previews: some View {
        Layout()
    }
}
