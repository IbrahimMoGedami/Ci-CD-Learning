//
//  HomeViewModel.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import Combine

// Presentation/Home/HomeViewModel.swift
final class HomeViewModel: ObservableObject {
    @Published var cars: [Car] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private let fetchCarsUseCase: FetchCarsUseCase
    private var cancellables = Set<AnyCancellable>()
    
    init(fetchCarsUseCase: FetchCarsUseCase) {
        self.fetchCarsUseCase = fetchCarsUseCase
    }
    
    func loadCars() {
        isLoading = true
        errorMessage = nil
        
        fetchCarsUseCase.execute()
            .receive(on: DispatchQueue.main)
            .sink { [weak self] completion in
                self?.isLoading = false
                if case .failure(let error) = completion {
                    self?.errorMessage = error.localizedDescription
                }
            } receiveValue: { [weak self] cars in
                self?.cars = cars
            }
            .store(in: &cancellables)
    }
}
