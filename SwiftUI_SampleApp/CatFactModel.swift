//
//  CatFactModel.swift
//  SwiftUI_SampleApp
//
//  Created by YUSUF KESKİN on 15.04.2023.
//

import Foundation

struct CatFactModel: Codable, Hashable {
    let facts: [String]
    
    enum CodingKeys: String, CodingKey {
        case facts = "data"
    }
}

