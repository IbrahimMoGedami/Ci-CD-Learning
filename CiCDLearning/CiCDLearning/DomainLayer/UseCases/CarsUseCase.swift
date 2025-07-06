//
//  FetchCarsUseCase.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Domain/UseCases/FetchCarsUseCase.swift
final class FetchCarsUseCase {
    
    private let repository: CarRepository
    
    init(repository: CarRepository) {
        self.repository = repository
    }
    
    func execute() -> AnyPublisher<[Car], Error> {
        repository.fetchCars()
    }

}
