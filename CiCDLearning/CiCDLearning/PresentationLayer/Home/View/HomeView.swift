//
//  HomeView.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import SwiftUI

// UI/Home/HomeView.swift
struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel
    @EnvironmentObject var coordinator: AppCoordinator
    
    var body: some View {
        List(viewModel.cars) { car in
            Button {
                coordinator.push(.carDetail(car))
            } label: {
                VStack(alignment: .leading) {
                    Text(car.brand)
                    Text(car.model).font(.subheadline)
                }
            }
        }
        .navigationTitle("Cars")
        .onAppear { viewModel.loadCars() }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Profile") {
                    coordinator.push(.profile)
                }
            }
        }
    }

}
