//
//  CarRepository.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Domain/Repositories/CarRepository.swift
protocol CarRepository {
    
    func fetchCars() -> AnyPublisher<[Car], Error>

}
