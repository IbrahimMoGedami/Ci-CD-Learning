//
//  ProfileView.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation
import SwiftUI

// UI/Profile/ProfileView.swift
struct ProfileView: View {
    
    @StateObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView()
            } else if let user = viewModel.user {
                Text(user.name).font(.title)
                Text(user.email).foregroundColor(.gray)
            } else if let error = viewModel.error {
                Text("Error: \(error)")
            }
        }
        .onAppear { viewModel.loadProfile() }
        .navigationTitle("Profile")
    }

}
