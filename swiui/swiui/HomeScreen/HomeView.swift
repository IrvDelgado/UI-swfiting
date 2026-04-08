//
//  HomeView.swift
//  swiui
//
//  Created by macbook on 07/04/26.
//

import SwiftUI

struct HomeView: View {
    
    let viewModel: HomeViewModel
    
    var body: some View {
        VStack() {
            Text("Homie")
            Button {
                viewModel.ctaTapped()
            } label: {
                Text("Show details")
            }

        }
    }
}
