//
//  Media.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/18.
//

import Foundation

struct Media: Codable {
    let adult: Bool?
    let backdropPath: String?
    let id: Int?
    let title: String?
    let name: String?
    let originalLanguage: OriginalLanguage?
    let originalTitle, overview, originalName, posterPath: String?
    let mediaType: MediaType?
    let genreIDS: [Int]?
    let popularity: Double?
    let releaseDate: String?
    let firstAirDate: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    let originCountry: [String]?
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case id, title, name
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case originalName = "original_name"
        case overview
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity
        case releaseDate = "release_date"
        case firstAirDate = "first_air_date"
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case originCountry = "origin_country"
    }
}
