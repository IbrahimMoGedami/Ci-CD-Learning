//
//  CarAPIService.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Data/Remote/CarAPIService.swift
final class CarAPIService {
    
    func fetchCars() -> AnyPublisher<[Car], Error> {
        let mockData = [
            Car(id: 1, model: "Model S", brand: "Tesla"),
            Car(id: 2, model: "i8", brand: "BMW")
        ]
        return Just(mockData)
            .setFailureType(to: Error.self)
            .delay(for: .seconds(1), scheduler: DispatchQueue.main)
            .eraseToAnyPublisher()
    }

}
