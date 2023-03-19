//
//  AnimationMenuView.swift
//  MegaLearnApp
//
//  Created by Lars Löffler on 26.12.22.
//

import SwiftUI

struct Animation_Implicit: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Text( "Tap me!\nor double tap!" )
        .multilineTextAlignment(.center)
        .padding( 50 )
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        //.blur(radius: (animationAmount-1) * 3)
        .animation(.interpolatingSpring(mass:0.5, stiffness: 500, damping: 7, initialVelocity: 2), value: animationAmount)
        .onTapGesture( count: 2 ) {
            animationAmount -= 1
            if animationAmount < 1 {
                animationAmount = 1
            }
        }
        .onTapGesture {
            animationAmount += 1
        }
    }
}

struct ImplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Implicit()
    }
}

