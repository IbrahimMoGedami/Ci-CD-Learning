//
//  CiCDLearningApp.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 15/06/2025.
//

import SwiftUI

/*
 
 CleanArchitectureApp/
 ├── App/
 │   └── CleanCombineApp.swift
 ├── UI/
 │   └── Home/
 │       └── HomeView.swift
 ├── Presentation/
 │   └── Home/
 │       └── HomeViewModel.swift
 ├── Domain/
 │   ├── Entities/
 │   │   └── Car.swift
 │   ├── UseCases/
 │   │   └── FetchCarsUseCase.swift
 │   └── Repositories/
 │       └── CarRepository.swift
 ├── Data/
 │   ├── Remote/
 │   │   └── CarAPIService.swift
 │   └── RepositoriesImpl/
 │       └── CarRepositoryImpl.swift
 ├── DI/
 │   └── AppContainer.swift

 */
@main
struct CiCDLearningApp: App {
    
    @StateObject var coordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $coordinator.path) {
                AppContainer.makeHomeView()
                    .navigationDestination(for: AppRoute.self) { route in
                        switch route {
                        case .home:
                            AppContainer.makeHomeView()
                        case .carDetail(let car):
                            AppContainer.makeCarDetailView(for: car)
                        case .profile:
                            AppContainer.makeProfileView()
                        }
                    }
            }
            .environmentObject(coordinator)
        }
    }
    
}
