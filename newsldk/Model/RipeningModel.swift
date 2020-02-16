//
//  RipeningModel.swift
//  newsldk
//
//  Created by Arman Habib on 17/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

// MARK: - Ripening Model

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
