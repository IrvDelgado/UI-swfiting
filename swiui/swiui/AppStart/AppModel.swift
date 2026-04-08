//
//  AppModel.swift
//  swiui
//
//  Created by macbook on 07/04/26.
//

import Observation

@Observable
@MainActor

final class AppModel {
    enum Flow {
        case launching
        case login
        case signup
        case authenticated
    }
    
    var flow: Flow = .launching
}
