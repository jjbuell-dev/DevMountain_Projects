//
// Movie.swift
// FavMovie_DM
//


import UIKit

class Movie {
    
    // MARK: - Properties
    
    let movieTitle: String
    let movieGenre: String
    let movieImage: String
    let movieDescription: String
    
    // memberwise initializer
    internal init(movieTitle: String, movieGenre: String, movieImage: String, movieDescription: String) {
        self.movieTitle = movieTitle
        self.movieGenre = movieGenre
        self.movieImage = movieImage
        self.movieDescription = movieDescription
    }
}
