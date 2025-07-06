//
//  UserRepository.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Domain/Repositories/UserRepository.swift
protocol UserRepository {
    
    func fetchUser() -> AnyPublisher<User, Error>

}
