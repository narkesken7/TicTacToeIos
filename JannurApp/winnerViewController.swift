//
//  winnerViewController.swift
//  JannurApp
//
//  Created by user on 18.07.2023.
//

import UIKit

class winnerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var winnerText: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rating" {
            let destination = segue.destination as! RatingViewController
            if winnerText.text != "" {
                var playerNew = true
                for i in PLayerDatabase.player.indices{
                    if PLayerDatabase.player[i].name == winnerText.text {
                        PLayerDatabase.player[i].score += 10
                        playerNew = false
                    }
                }
                if playerNew {
                    
                    
                    PLayerDatabase.player.append(Player(name: winnerText.text, image: UIImage.init(named: "player"), score: 10))
                }
            }
            
        }
    }

}
