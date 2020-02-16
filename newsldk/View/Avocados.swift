//
//  RecipeView.swift
//  newsldk
//
//  Created by Arman Habib on 13/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct Avocados: View {
    // MARK: - Properties
    
    @State private var pulsateAnimation: Bool = false
    
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avocado")
                    .font(.system(size: 32, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("""
                Creamy, green, and full of nutrients!
                Avocado is a powerhouse ingredient at any meal.
                Enjoy these handpicked avocado recipes for breakfast,
                lunch, dinner & more!
                """)
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                
            }
            .padding()
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
            .edgesIgnoringSafeArea(.all)
            .onAppear(perform: {
                self.pulsateAnimation.toggle()
            })
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        Avocados()
            .previewDevice("iPhone 11 Pro Max")
        //            .environment(\.colorScheme, .dark)
    }
}
