//
//  AppCoordinator.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import SwiftUI
import Combine

// Coordinator/AppCoordinator.swift
final class AppCoordinator: ObservableObject {
    
    @Published var path: [AppRoute] = []
    
    func push(_ route: AppRoute) {
        path.append(route)
    }
    
    func pop() {
        _ = path.popLast()
    }
    
    func popToRoot() {
        path.removeAll()
    }
    
}
