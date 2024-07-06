//
//  ViewController.swift
//  CPSC5330 Assignment 7
//
//  Created by Christian Polka on 7/6/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var games = [
    VideoGames("Starfield", "Xbox Series X/S | PC", "Console"),
    VideoGames("Baldur's Gate 3", "Xbox Series X/S | Playstation 5 | PC", "Console"),
    VideoGames("World of Warcraft", "PC", "Console"),
    VideoGames("Animal Crossing: New Horizons", "Nintendo Switch", "Console"),
    VideoGames("Hell Divers 2", "Playstation 5 | PC", "Console"),
    VideoGames("College Football 25", "Xbox Series X/S | Playstation 5", "Console"),
    VideoGames("Zelda: Tears of the Kingdom", "Nintendo Switch", "Console"),
    VideoGames("Horizon: Forbidden West", "Playstation 5", "Console"),
    VideoGames("Fortnite", "Xbox Series X/S | Playstation 5 | Nintendo Switch | PC", "Console"),
    VideoGames("Star Wars Outlaws", "Xbox Series X/S | Playstation 5 | PC", "Console")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = games[indexPath.row].game
        content.secondaryText = games[indexPath.row].option
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = indexPath.row
        performSegue(withIdentifier: "toGameDetail", sender: selectedRow)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let navigation = segue.destination as! GameDetail
        let selection = sender as! Int
        let nameToSend = games[selection].game
        let detailToSend = games[selection].detail
        navigation.gameName = nameToSend
        navigation.gameDetail = detailToSend
    }

}

