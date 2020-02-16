//
//  DishesView.swift
//  newsldk
//
//  Created by Arman Habib on 15/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            // 1st Column
            VStack(alignment: .leading, spacing: 4) {
                HStack() {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconeModifire())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack() {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconeModifire())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack() {
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconeModifire())
                    Spacer()
                    Text("Soup")
                }
                Divider()
                HStack() {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconeModifire())
                    Spacer()
                    Text("Toasts")
                }
            }
            
            // 2nd Column
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            // 3rd Column
            VStack(alignment: .trailing, spacing: 4) {
                HStack() {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconeModifire())
                }
                Divider()
                HStack() {
                    Text("Halfavo")
                    Spacer()
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconeModifire())
                }
                Divider()
                HStack() {
                    Text("Salads")
                    Spacer()
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconeModifire())
                }
                Divider()
                HStack() {
                    Text("Sandwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconeModifire())
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

 //                    .frame(width: 42, height: 42, alignment: .center)
struct IconeModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
