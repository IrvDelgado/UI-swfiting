//
//  swiuiApp.swift
//  swiui
//
//  Created by macbook on 07/04/26.
//

import SwiftUI

@main
struct swiuiApp: App {
    @State private var appModel = AppModel()
    
    var body: some Scene {
        WindowGroup {
           RootView()
                .environment(appModel)
        }
    }
}
