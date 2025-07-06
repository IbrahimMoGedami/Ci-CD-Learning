//
//  CarDetailViewModel.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

final class CarDetailViewModel: ObservableObject {
    
    @Published var car: Car
    
    init(car: Car) {
        self.car = car
    }
    
}
