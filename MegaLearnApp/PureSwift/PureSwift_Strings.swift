//
//  PureSwift_Strings.swift
//  MegaLearnApp
//
//  Created by Lars Löffler on 21.12.22.
//

import SwiftUI

struct PureSwift_Strings: View {
    var body: some View {
        ScrollView {
            VStack( alignment: .leading ) {
                Text("""
**String interpolation**

let x = 10
print( "I am \\\\(x) years old and I can eat \\\\(x*2) candies.\\n\\n" + StringUtils.lorem( paragraphs: 10, words: 40 ) )

***output***:

""")
                let x = 10
                let s = "I am \(x) years old and I can eat \(x*2) candies."
                Text( s )                
                Text("Use triple quotes \"\"\" for **multiline strings**:\n\n" + StringUtils.lorem( paragraphs: 10, words: 40 ))
                Spacer()
            }
        }
//        .navigationBarTitle("Strings in Swift")
        .padding(30)
    }
}

struct PureSwift_Strings_Previews: PreviewProvider {
    static var previews: some View {
        PureSwift_Strings()
    }
}
