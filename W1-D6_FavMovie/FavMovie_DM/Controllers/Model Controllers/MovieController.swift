//
// MovieController.swift
// FavMovie_DM
//


import Foundation

struct MovieController {

    // MARK: - Properties
    
    static var movies: [Movie] {
        let deadPool = Movie(movieTitle: "DeadPool", movieGenre: "Comedy", movieImage: "deadpool", movieDescription: "Wade Wilson (Ryan Reynolds) is a former Special Forces operative who now works as a mercenary. His world comes crashing down when evil scientist Ajax (Ed Skrein) tortures, disfigures and transforms him into Deadpool. The rogue experiment leaves Deadpool with accelerated healing powers and a twisted sense of humor. With help from mutant allies Colossus and Negasonic Teenage Warhead (Brianna Hildebrand), Deadpool uses his new skills to hunt down the man who nearly destroyed his life.")

        let johnWick = Movie(movieTitle: "John Wick", movieGenre: "Action", movieImage: "johnWick", movieDescription: "Legendary assassin John Wick (Keanu Reeves) retired from his violent career after marrying the love of his life. Her sudden death leaves John in deep mourning. When sadistic mobster Iosef Tarasov (Alfie Allen) and his thugs steal John's prized car and kill the puppy that was a last gift from his wife, John unleashes the remorseless killing machine within and seeks vengeance. Meanwhile, Iosef's father (Michael Nyqvist) -- John's former colleague -- puts a huge bounty on John's head")

        let hacksawRidge = Movie(movieTitle: "Hacksaw Ridge", movieGenre: "Drama/Action", movieImage: "hacksawRidge", movieDescription: "The true story of Pfc. Desmond T. Doss (Andrew Garfield), who won the Congressional Medal of Honor despite refusing to bear arms during WWII on religious grounds. Doss was drafted and ostracized by fellow soldiers for his pacifist stance but went on to earn respect and adoration for his bravery, selflessness and compassion after he risked his life -- without firing a shot -- to save 75 men in the Battle of Okinawa.")

        let euroVision = Movie(movieTitle: "Eurovision", movieGenre: "Comedy", movieImage: "euroVision", movieDescription: "Two small-town singers chase their pop star dreams at a global music competition, where scheming rivals, high stakes and onstage mishaps test their bond.")

        let theWailing = Movie(movieTitle: "The Wailing", movieGenre: "Horror", movieImage: "theWailing", movieDescription: "Suspicion leads to hysteria when rural villagers link a series of brutal murders to the arrival of a mysterious stranger (Kunimura Jun).")

        let longShot = Movie(movieTitle: "Long Shot", movieGenre: "Comedy", movieImage: "longShot", movieDescription: "Fred Flarsky is a gifted and free-spirited journalist who has a knack for getting into trouble. Charlotte Field is one of the most influential women in the world -- a smart, sophisticated and accomplished politician. When Fred unexpectedly runs into Charlotte, he soon realizes that she was his former baby sitter and childhood crush. When Charlotte decides to make a run for the presidency, she impulsively hires Fred as her speechwriter -- much to the dismay of her trusted advisers.")

        return [deadPool, johnWick, hacksawRidge, euroVision, theWailing, longShot]
    }
}
