//
//  CarRepositoryImpl.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Data/RepositoriesImpl/CarRepositoryImpl.swift
final class CarRepositoryImpl: CarRepository {
    
    private let api: CarAPIService
    
    init(api: CarAPIService) {
        self.api = api
    }
    
    func fetchCars() -> AnyPublisher<[Car], Error> {
        api.fetchCars()
    }

}
