//
//  MediaApi.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/23.
//

import Foundation

enum MediaApi {
    case getTrandingMovies // 电影一周趋向
    case getTrandingShows // 电视剧一周趋向
    case getPopularPerson // 演员一周趋势
    case searchMulti(search: String) // 多种搜索
    case searchMovie(search: String) // 电影搜索
    case searchTV(search: String) // 电视剧搜索
    case getMovieTrailer(movieID: Int) // 获取电影花絮
    case getTVtrailer(TVid: Int) // 获取电视剧花絮
    case getMovieDeatil(movieID: Int) // 获取电影详细信息
    case getTvDeatil(TVid: Int) // 获取电视剧详细信息
    
    // tmdb 域名
    var baseURL: String {
        return "https://api.themoviedb.org/3/"
    }
    
    var apiKey: String {
        return "4f8afb35881a873ad0abc5c32dcfbcb1"
    }
    
    var lang: String {
        return "en-US"
    }
    
    var path: String {
        switch self {
        case .getTrandingMovies: return "trending/movie/week?api_key=\(apiKey)"
        case .getTrandingShows: return "trending/tv/week?api_key=\(apiKey)"
        case .getPopularPerson: return "trending/person/week?api_key=\(apiKey)"
        
        case .searchMulti(search: let search): return "search/multi?api_key=\(apiKey)&language=\(lang)&query=\(search)"
        case .searchMovie(search: let search): return "search/movie?api_key=\(apiKey)&language=\(lang)&query=\(search)"
        case .searchTV(search: let search): return "search/tv?api_key=\(apiKey)&language=\(lang)&query=\(search)"
        
        case .getMovieTrailer(movieID: let movieID): return "movie/\(String(describing: movieID))/videos?api_key=\(apiKey)&language=\(lang)"
        case .getTVtrailer(TVid: let TVid): return "tv/\(TVid)/videos?api_key=\(apiKey)&language=\(lang)"
            
        case .getMovieDeatil(movieID: let movieID): return "movie/\(String(describing: movieID))?api_key=\(apiKey)&language=\(lang)"
        case .getTvDeatil(TVid: let TVid): return "tv/\(TVid)?api_key=\(apiKey)&language=\(lang)"
            
        }
    }
    
    var request: URLRequest {
        let url = URL(string: path, relativeTo: URL(string: baseURL))!
        let request = URLRequest(url: url)
        return request
    }
}
