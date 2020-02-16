//
//  RecipeCookingView.swift
//  newsldk
//
//  Created by Arman Habib on 16/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - Properties
    var recipe: Recipe
    
    var body: some View {
         HStack(alignment: .center, spacing: 12) {
                           HStack(alignment: .center, spacing: 2) {
                               Image(systemName: "person.2")
                               Text("Serves: \(recipe.serves)")
                           }
                           
                           HStack(alignment: .center, spacing: 2) {
                               Image(systemName: "clock")
                               Text("Pre: \(recipe.preparation)")
                           }
                           
                           HStack(alignment: .center, spacing: 2) {
                               Image(systemName: "flame")
                               Text("Cooking: \(recipe.cooking)")
                           }
                       }
                       .font(.footnote)
                       .foregroundColor(Color.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
