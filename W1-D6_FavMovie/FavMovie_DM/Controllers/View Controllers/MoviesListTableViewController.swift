//
// MoviesListTableViewController.swift
// FavMovie_DM
//


import UIKit

class MoviesListTableViewController: UITableViewController {
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieController.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        let movie = MovieController.movies[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = movie.movieTitle
        content.textProperties.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        content.textProperties.color = .systemIndigo
        
        content.secondaryText = movie.movieGenre
        content.secondaryTextProperties.font = UIFont.systemFont(ofSize: 14, weight: .light)
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // IIDOO: Identifier, Indexpath, Destination, Object to send, Object sent
        if segue.identifier == "toDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destinationVC = segue.destination as? MoviesDetailViewController else { return }
            
            let movieToSend = MovieController.movies[indexPath.row]
            destinationVC.movie = movieToSend
        }
    }
}
