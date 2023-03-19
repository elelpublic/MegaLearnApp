//
//  Layout_Stacks.swift
//  MegaLearnApp
//
//  Created by Lars Löffler on 26.12.22.
//

import SwiftUI

struct Layout_Stacks: View {
    var body: some View {
        VStack {
          MyText( "Hello World!" )
            text( "VStack1" )
//            text( "VStack2" )
            HStack {
//                text("HStack1")
//                text("HStack2")
            }
        }
    }
}

struct MyText : View {
  let text: String
  init( _ text: String ) {
    self.text = text
  }
  var body : some View {
    Text( text )
      .fontWeight(.heavy)
  }
}

@ViewBuilder func text( _ caption: String ) -> some View {
    
  Text( caption )
        .font(.title)
        .padding(30.0)
    
}


struct Layout_Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Layout_Stacks()
    }
}
