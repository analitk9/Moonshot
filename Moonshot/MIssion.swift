//
//  MIssion.swift
//  Moonshot
//
//  Created by Denis Evdokimov on 6/7/24.
//

import Foundation


struct CrewRole: Codable, Hashable {
    let name: String
    let role: String
}

struct Mission: Codable, Identifiable, Hashable {
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
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
