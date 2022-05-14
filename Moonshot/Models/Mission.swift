//
//  Mission.swift
//  Moonshot
//
//  Created by Michael & Diana Pascucci on 5/6/22.
//

import Foundation


struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
    
        // MARK: - PROPERTIES
        let name: String
        let role: String
    }
    
    // MARK: - PROPERTIES AND CONSTANTS
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    // MARK: - COMPUTED PROPERTIES
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
