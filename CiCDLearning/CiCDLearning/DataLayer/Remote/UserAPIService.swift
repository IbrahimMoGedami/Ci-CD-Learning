//
//  UserAPIService.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Data/Remote/UserAPIService.swift
final class UserAPIService {
    
    func fetchUser() -> AnyPublisher<User, Error> {
        let mock = User(id: 1, name: "Ibrahim", email: "ibrahim@example.com")
        return Just(mock)
            .setFailureType(to: Error.self)
            .delay(for: .seconds(1), scheduler: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}
