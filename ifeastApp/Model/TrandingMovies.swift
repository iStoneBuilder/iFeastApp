//
//  TrandingMovies.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/18.
//

import Foundation

struct TrandingMovies: Codable {
    let page: Int?
    let results: [Media]?
    let totalPages, totalResults: Int?
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
