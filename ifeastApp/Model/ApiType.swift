//
//  ApiType.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/18.
//

import Foundation

enum ApiType {
    case getTrandingMovies
    case getTrandingShows
    case getPopularPerson
    case searchMovie(search: String)
    case searchTV(search: String)
    case getMovieTrailer(movieID: Int)
    case getTVtrailer(TVid: Int)

    var baseURL: String {
        return "https://api.themoviedb.org/3/"
    }
    
    var path: String {
        switch self {
        case .getTrandingMovies: return "trending/movie/week?api_key=4f8afb35881a873ad0abc5c32dcfbcb1"
        case .getTrandingShows: return "trending/tv/week?api_key=4f8afb35881a873ad0abc5c32dcfbcb1"
        case .getPopularPerson: return "trending/person/week?api_key=4f8afb35881a873ad0abc5c32dcfbcb1"
        case .searchMovie(search: let search): return "search/movie?api_key=4f8afb35881a873ad0abc5c32dcfbcb1&language=en-US&query=\(search)"
        case .searchTV(search: let search): return
            "search/tv?api_key=4f8afb35881a873ad0abc5c32dcfbcb1&language=en-US&query=\(search)"
        case .getMovieTrailer(movieID: let movieID): return
            "movie/\(String(describing: movieID))/videos?api_key=4f8afb35881a873ad0abc5c32dcfbcb1&language=en-US"
        case .getTVtrailer(TVid: let TVid): return "https://api.themoviedb.org/3/tv/\(TVid)/videos?api_key=4f8afb35881a873ad0abc5c32dcfbcb1&language=en-US"
        }
    }
    
    var request: URLRequest {
        let url = URL(string: path, relativeTo: URL(string: baseURL))!
        let request = URLRequest(url: url)
        return request
    }
}
