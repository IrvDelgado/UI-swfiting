//
//  RootView.swift
//  swiui
//
//  Created by macbook on 07/04/26.
//

import SwiftUI

struct RootView: View {
    @Environment(AppModel.self) private var appModel
    
    var body: some View {
        switch appModel.flow {
        case .launching:
            SplashScreen()
        case .login:
            Color.red.ignoresSafeArea()
        case .signup:
            Color.green.ignoresSafeArea()
        case .authenticated:
            AuthenticatedHostView()
        }
    }
}
