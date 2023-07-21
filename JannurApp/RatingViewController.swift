//
//  RatingViewController.swift
//  JannurApp
//
//  Created by user on 13.07.2023.
//

import UIKit

class RatingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ratingTableView.dequeueReusableCell(withIdentifier: "myCell") as! ratingCell
        cell.imageCell.image = player[indexPath.row].image
        cell.labelCell.text = player[indexPath.row].name
        cell.scoreCell.text = String(player[indexPath.row].score)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ratingTableView.delegate = self
        ratingTableView.dataSource = self
        var sortbuffer: Player
        for i in 0..<PLayerDatabase.player.count - 1 {
            for j in 0..<PLayerDatabase.player.count - i - 1 {
                if PLayerDatabase.player[j].score<PLayerDatabase.player[j + 1].score {
                    sortbuffer = PLayerDatabase.player[j + 1]
                    PLayerDatabase.player[j+1] = PLayerDatabase.player[j]
                    PLayerDatabase.player[j] = sortbuffer
                }
            }
        }

        
    }
    var player = PLayerDatabase.player

 
    @IBOutlet weak var ratingTableView: UITableView!
    

    
}

