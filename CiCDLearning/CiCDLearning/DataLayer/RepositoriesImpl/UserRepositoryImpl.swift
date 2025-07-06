//
//  UserRepositoryImpl.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Data/RepositoriesImpl/UserRepositoryImpl.swift
final class UserRepositoryImpl: UserRepository {
    
    private let api: UserAPIService
    
    init(api: UserAPIService) {
        self.api = api
    }
    
    func fetchUser() -> AnyPublisher<User, Error> {
        api.fetchUser()
    }

}
