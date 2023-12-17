//  Created by Lars Löffler on 20.12.22.

import SwiftUI

struct Navigation: View {
    
    struct NamedColor: Identifiable, Hashable {
        var id: String
        let color: Color
    }
    
    //@State private var path: [Color] = []
    @State private var singleSelection: NamedColor? = nil
    @State private var multiSelection: Set<NamedColor> = []
    let allColors = [
        NamedColor( id: "purple", color: Color.purple ),
        NamedColor( id: "pink", color: Color.pink ),
        NamedColor( id: "orange", color: Color.orange )
    ]
    
    var body: some View {
        NavigationSplitView {
            List( allColors, selection: $singleSelection ) { namedColor in
                NavigationLink( namedColor.id, value: namedColor )
            }
            .navigationDestination(for: NamedColor.self) { namedColor in
                ColorDetail(color: namedColor.color)
            }
        } detail: {
            if let color = singleSelection?.color {
                ColorDetail(color: color)
            } else {
                Text("Pick a color")
            }
        }
        .onAppear {
#if !os( iOS )
            singleSelection = allColors[ 0 ]
#endif
        }
    }
}

struct ColorDetail: View {
    private var color: Color
    init( color: Color ) {
        self.color = color
    }
    var body: some View {
        color
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
