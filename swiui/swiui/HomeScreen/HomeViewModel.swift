//
//  HomeViewModel.swift
//  swiui
//
//  Created by macbook on 07/04/26.
//

import Observation

@Observable
class HomeViewModel {
    var onOutPut: ((HomeVmOutput)-> Void)
    
    enum HomeVmOutput {
        case navigateToDetail
    }
    
    init(onOutPut: @escaping (HomeVmOutput) -> Void) {
        self.onOutPut = onOutPut
    }
    
    private(set) var text = ""
    
    func ctaTapped() {
        onOutPut(.navigateToDetail)
    }
}
