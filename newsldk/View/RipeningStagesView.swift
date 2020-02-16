//
//  StagesView.swift
//  newsldk
//
//  Created by Arman Habib on 13/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct RipeningStagesView: View {
    
    // MARK: - Properties
    var ripeningStage: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStage) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct StagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStage: ripeningData)
    }
}
