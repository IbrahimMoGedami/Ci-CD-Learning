//
//  CarDetailView.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import SwiftUI

// UI/CarDetail/CarDetailView.swift
struct CarDetailView: View {
    
    @StateObject var viewModel: CarDetailViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(viewModel.car.brand).font(.largeTitle)
            Text(viewModel.car.model).font(.title)
            Spacer()
        }
        .padding()
        .navigationTitle("Car Detail")
    }

}
