//
//  VideoModel.swift
//  Africa
//
//  Created by bui khac lam on 23/06/2023.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail : String {
        "video-\(id)"
    }
}
