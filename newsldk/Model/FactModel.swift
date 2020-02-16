//
//  FactModel.swift
//  newsldk
//
//  Created by Arman Habib on 15/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

// MARK:- Fact Data

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
