//
//  RecipeModel.swift
//  newsldk
//
//  Created by Arman Habib on 15/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

// MARK:- Recipe Model

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
