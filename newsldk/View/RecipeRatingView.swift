//
//  RecipeRatingView.swift
//  newsldk
//
//  Created by Arman Habib on 16/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - Properties
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
