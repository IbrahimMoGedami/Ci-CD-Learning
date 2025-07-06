//
//  ProfileViewModel.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Presentation/Profile/ProfileViewModel.swift
final class ProfileViewModel: ObservableObject {
    
    @Published var user: User?
    @Published var isLoading = false
    @Published var error: String?
    
    private let userProfileUseCase: UserProfileUseCase
    private var cancellables = Set<AnyCancellable>()
    
    init(userProfileUseCase: UserProfileUseCase) {
        self.userProfileUseCase = userProfileUseCase
    }
    
    func loadProfile() {
        isLoading = true
        userProfileUseCase.execute()
            .receive(on: DispatchQueue.main)
            .sink { [weak self] completion in
                self?.isLoading = false
                if case .failure(let err) = completion {
                    self?.error = err.localizedDescription
                }
            } receiveValue: { [weak self] user in
                self?.user = user
            }
            .store(in: &cancellables)
    }
}
