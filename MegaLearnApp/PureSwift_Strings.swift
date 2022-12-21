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
print( "I am \\\\(x) years old and I can eat \\\\(x*2) candies." )

***output***:
""")
                let x = 10
                let s = "I am \(x) years old and I can eat \(x*2) candies."
                Text( s )                
                Text("""

Use triple quotes \""" for **multiline strings**:

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
""")
                Spacer()
            }
        }
        .navigationBarTitle("Strings in Swift")
        .padding(30)
    }
}

struct PureSwift_Strings_Previews: PreviewProvider {
    static var previews: some View {
        PureSwift_Strings()
    }
}
