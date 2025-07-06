//
//  AppContainer.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import SwiftUI

// DI/AppContainer.swift
enum AppContainer {
    
    static func makeHomeView() -> some View {
        let api = CarAPIService()
        let repo = CarRepositoryImpl(api: api)
        let useCase = FetchCarsUseCase(repository: repo)
        let vm = HomeViewModel(fetchCarsUseCase: useCase)
        return NavigationView { HomeView(viewModel: vm) }
    }
    
    static func makeCarDetailView(for car: Car) -> some View {
        let vm = CarDetailViewModel(car: car)
        return CarDetailView(viewModel: vm)
    }
    
    static func makeProfileView() -> some View {
        let api = UserAPIService()
        let repo = UserRepositoryImpl(api: api)
        let useCase = UserProfileUseCase(repository: repo)
        let vm = ProfileViewModel(userProfileUseCase: useCase)
        return NavigationView { ProfileView(viewModel: vm) }
    }

}

