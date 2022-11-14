//
// MoviesDetailViewController.swift
// FavMovie_DM
//


import UIKit

class MoviesDetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieGenreLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    // MARK: - Properties
    // landing pad
    var movie: Movie?
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    // MARK: - Helper Functions
    
    func updateView() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.movieTitle
        movieImageView.image = UIImage(named: movie.movieImage)
        movieGenreLabel.text = movie.movieGenre
        movieDescriptionLabel.text = movie.movieDescription
    }
}
