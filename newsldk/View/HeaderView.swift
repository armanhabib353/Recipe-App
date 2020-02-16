//
//  HeaderView.swift
//  newsldk
//
//  Created by Arman Habib on 14/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    //MARK:- Properties
    
    var header: Header
    
    @State private var showHeadLine: Bool = false
    
    var slidInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 6)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(header.headline)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .shadow(radius: 3)
                    Text(header.subheadline)
                    .font(.footnote)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                    .shadow(radius: 3)
            }
                .padding(.vertical, 0)
            .padding(.horizontal, 20)
            .frame(width: 281, height: 105)
            .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -75, y: showHeadLine ? 85 : 220)
        .animation(slidInAnimation)
        .onAppear(perform: {
            self.showHeadLine.toggle()
        })
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headerData[1])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
