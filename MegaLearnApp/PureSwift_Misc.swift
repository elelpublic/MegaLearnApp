//
//  PureSwift_Misc.swift
//  MegaLearnApp
//
//  Created by Lars Löffler on 19.03.23.
//

import SwiftUI

struct PureSwift_Misc: View {
  @State var text: String = main()
    var body: some View {
      TextEditor( text: $text )
        //.disabled(true)
        .padding(10)
        .border(.gray)
    }
}

struct PureSwift_Misc_Previews: PreviewProvider {
    static var previews: some View {
        PureSwift_Misc()
    }
}
