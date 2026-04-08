//
//  AuthenticatedHostView.swift
//  swiui
//
//  Created by macbook on 07/04/26.
//

import SwiftUI
import Observation

struct AuthenticatedHostView: View {
    @State private var coordinator = HomeCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.makeHomeView()
                .navigationDestination(for: HomeRoutes.self) { route in
                    switch route {
                    case .detail:
                        coordinator.makeDetailView()
                    }
                }
        }
    }
}
