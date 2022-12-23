//
//  TrandingMovies.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/18.
//

import Foundation

struct MediaResult: Codable {
    let page: Int? // 页数
    let results: [Media]? // 结果集
    let totalPages, totalResults: Int? // 总页数，总结果数
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
