//
//  ContentView.swift
//  newsldk
//
//  Created by Arman Habib on 11/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK:- Properties
    
    var headers: [Header] = headerData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // MARK:- Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // MARK:- Dishes View
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifire())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - Facts
                
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifire())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }
                    }
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                    .padding(.vertical)
                }
                
                // MARK: - Recipe Card
                Text("Recipe Card")
                    .fontWeight(.bold)
                    .modifier(TitleModifire())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.trailing)
                .padding(.leading)
                
                // MARK:- Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifire())
                    
                    Text("There is no worry to about this. its just a simple magics")
                        .font(.system(.body, design: .serif))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .frame(minHeight: 60)
                        .lineLimit(2)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color.green)
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headerData, facts: factsData, recipes: recipesData)
    }
}
