//
//  FactsView.swift
//  newsldk
//
//  Created by Arman Habib on 15/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct FactsView: View {
    // MARK:- Properties
    
    var fact: Fact
    
    var body: some View {
        
        ZStack() {
            Text(fact.content)
                .padding(.leading, 50)
                .padding(.trailing, 10)
                .padding(.vertical, 10)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .font(.footnote)
                .foregroundColor(Color.white)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height: 74, alignment: .center)
            )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 82, height: 82, alignment: .center)
            )
                .background(
                        Circle()
                            .fill(Color.white)
                            .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -155)
        }
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factsData[0])
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
