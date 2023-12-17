//
//  PureSwiftMenu.swift
//  MegaLearn
//
//  Created by Lars Löffler on 20.12.22.
//

import SwiftUI

struct Animation: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink( destination: {
                    Animation_Implicit()
                }, label: {
                    Text( "Implicit animation" )
                })
//                .navigationBarTitle("Animation")
            }
        }
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        Animation()
    }
}
