//
//  ApiManager.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/18.
//

import Foundation


class ApiManager {
    static let shared = ApiManager()
    
    func getTrandingMovies(complition: @escaping (TrandingMovies) -> Void) {
        let request = ApiType.getTrandingMovies.request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let movies = try? JSONDecoder().decode(TrandingMovies.self, from: data) {
                complition(movies)
            }
        }
        task.resume()
    }
    
    func getTrandingShows(complition: @escaping (TrandingMovies) -> Void) {
        let request = ApiType.getTrandingShows.request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let shows = try? JSONDecoder().decode(TrandingMovies.self, from: data) {
                complition(shows)
            }
        }
        task.resume()
    }
   
    func searchMovie(search: String, complition: @escaping (TrandingMovies) -> Void) {
        let request = ApiType.searchMovie(search: search).request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let searchMovieResult = try? JSONDecoder().decode(TrandingMovies.self, from: data) {
                complition(searchMovieResult)
            }
        }
        task.resume()
    }
   
    func searchShow(search: String, complition: @escaping (TrandingMovies) -> Void) {
        let request = ApiType.searchTV(search: search).request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let searchShowResult = try? JSONDecoder().decode(TrandingMovies.self, from: data) {
                complition(searchShowResult)
            }
        }
        task.resume()
    }
   
    func getMovieTrailer(movieID: Int, complition: @escaping (movieTrailerModel) -> Void) {
        let request = ApiType.getMovieTrailer(movieID: movieID).request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data,
               let movieTrailer = try? JSONDecoder().decode(movieTrailerModel.self, from: data) {
                complition(movieTrailer)
            }
        }
        task.resume()
    }
  
    func getTVtrailer(TVid: Int, complition: @escaping (movieTrailerModel) -> Void) {
        let request = ApiType.getTVtrailer(TVid: TVid).request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data,
               let TVTrailer = try? JSONDecoder().decode(movieTrailerModel.self, from: data) {
                complition(TVTrailer)
            }
        }
        task.resume()
    }
}
