//
//  UserProfileUseCase.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Domain/UseCases/FetchUserProfileUseCase.swift
final class UserProfileUseCase {
    
    private let repository: UserRepository
    
    init(repository: UserRepository) {
        self.repository = repository
    }
    
    func execute() -> AnyPublisher<User, Error> {
        repository.fetchUser()
    }

}
