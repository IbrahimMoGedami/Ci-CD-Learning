//
//  User.swift
//  CiCDLearning
//
//  Created by Ibrahim Gedami on 06/07/2025.
//

import Foundation

// Domain/Entities/User.swift
struct User: Identifiable, Codable {
    
    let id: Int
    let name: String
    let email: String
    
}
