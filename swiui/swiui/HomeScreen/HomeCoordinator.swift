//
//  HomeCoordinator.swift
//  swiui
//
//  Created by macbook on 07/04/26.
//
import SwiftUI

@Observable
@MainActor

final class HomeCoordinator {
    var path: [HomeRoutes] = []
    
    private var homeViewModel: HomeViewModel
    
    init() {
        self.homeViewModel = HomeViewModel(onOutPut: { _ in })
        setupBindings()
    }
    
    func makeHomeView() -> some View {
        HomeView(viewModel: homeViewModel)
    }
    
    func makeDetailView() -> some View {
        Text("Detail")
    }
    
    private func setupBindings() {
        self.homeViewModel.onOutPut = { [weak self] output in
            switch output {
            case .navigateToDetail:
                self?.path.append(.detail)
            }
        }
    }
}

public enum HomeRoutes: Hashable {
    case detail
}
