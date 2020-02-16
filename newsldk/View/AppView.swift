//
//  AppView.swift
//  newsldk
//
//  Created by Arman Habib on 13/2/20.
//  Copyright © 2020 Arman Habib. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            Avocados()
            .tabItem({
                Image("tabicon-branch---  ---")
                Text("Avocados")
            })
            ContentView()
            .tabItem({
                Image("tabicon-book---  ---")
                Text("Recipes")
            })
            RipeningStagesView()
            .tabItem({
                Image("tabicon-avocado---  ---")
                Text("Ripening")
            })
            Settings()
            .tabItem({
                Image("tabicon-settings---  ---")
                Text("Settings")
            })
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
