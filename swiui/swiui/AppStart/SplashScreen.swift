//
//  SplashScreen.swift
//  swiui
//
//  Created by macbook on 07/04/26.
//

import SwiftUI

struct SplashScreen: View {
    @Environment(AppModel.self) private var appModel
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack(alignment: .center) {
                ProgressView()
                    .tint(Color.white)
                
                Text("Welcome")
            }
        }.task {
            print("Loading...")
            
            //Simulating loading task
            
            do {
                try await Task.sleep(nanoseconds: 2_000_000_000)
                print("Loaded")
                appModel.flow = .authenticated
            } catch {
                print("Loading failed.")
            }
        }
    }
}
