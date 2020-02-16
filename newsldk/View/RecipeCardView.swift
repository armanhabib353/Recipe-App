//
//  RecipeCardView.swift
//  newsldk
//
//  Created by Arman Habib on 15/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - Properties
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        
        // Card View
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(Color.white)
                            .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 3, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 20)
                        
                        Spacer()
                        //                            .offset(y: -115)
                    }
                }
            }
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
            
            VStack(alignment: .leading, spacing: 12) {
                // Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // HeadLine
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                // Rating
                RecipeRatingView(recipe: recipe)
                
                // Cooking
               RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal) {
            RecipeDetailsView(recipe: self.recipe)
        }
    }
    
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)  // .sizeThatFixed // .fixed(width: 375, height: 250)
    }
}
