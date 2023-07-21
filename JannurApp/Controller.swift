//
//  Controller.swift
//  JannurApp
//
//  Created by user on 10.07.2023.
//

import Foundation
class TicTacToe {
    var XOs: [XO] = []
    var winCombination = [[0,3,6] ,[1,4,7], [2,5,8], [0,1,2], [3,4,5], [6, 7, 8], [0, 4, 8], [6, 4, 2]]
    var indexUp = 0
    var AIGame = false
    init() {
        for _ in 0...8 {
            let XO1 = XO()
            XOs.append(XO1)
        }
    }
    func buttonSwitch(at index: Int ){
        indexUp += 1
        if indexUp % 2 == 0 {
            XOs[index].XO = "⭕️"
        }
        else {
            XOs[index].XO = "❌"
        }
        XOs[index].isFaceUp = true
        if AIGame && indexUp < 9{
            var indexAI = Int.random(in: 0...8)
            while XOs[indexAI].isFaceUp {
                indexAI = Int.random(in: 0...8)
                
            }
            indexUp += 1
            if indexUp%2 == 0 {
                XOs[indexAI].XO = "⭕️"
            }
            else {
                XOs[indexAI].XO = "❌"
            }
            XOs[indexAI].isFaceUp = true
        }
    }
    func winCom() -> String? {
        for i in winCombination {
            if XOs[i[0]].XO == XOs[i[1]].XO && XOs[i[1]].XO == XOs[i[2]].XO && XOs[i[0]].isFaceUp {
                return XOs[i[0]].XO
            }
        }
        if indexUp == 9 {
            return "Draw"
        }
       
      
        
        return nil
    }
    func restart () {
        for i in XOs.indices  {
            XOs[i].XO = nil
            XOs[i].isFaceUp = false
        }
        indexUp = 0
    }
}
