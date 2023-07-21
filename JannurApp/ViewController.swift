//
//  ViewController.swift
//  JannurApp
//
//  Created by user on 10.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    var game = TicTacToe()
    @IBOutlet var arrayButton: [UIButton]!
    
    @IBAction func winnerButtonClick(_ sender: UIButton) {
    }
    @IBOutlet weak var winnerButton: UIButton!
    
    @IBAction func Restart(_ sender: UIButton) {
        game.restart()
        winnerButton.isHidden = true
        updateView()
    }
    @IBOutlet weak var labelWinner: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        let index = arrayButton.firstIndex(of : sender )!
        game.buttonSwitch(at: index)
        updateView()
    }
    func updateView() {
        for i in arrayButton.indices {
            let card = game.XOs[i]
            let button = arrayButton[i]
            if card.isFaceUp {
                button.setTitle(card.XO, for: .normal)
                button.isEnabled = false
            } else {
                button.setTitle("", for: .normal)
                button.isEnabled = true
            }
            }
            if let win = game.winCom(){
                labelWinner.text = "Winner \(win) "
                for i in arrayButton {
                    i.isEnabled = false
                }
                if win != "Draw"{
                    winnerButton.isHidden = false
                }
            }
        else {
            labelWinner.text = " "
        }
        }
    }

