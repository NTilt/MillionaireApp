//
//  Resources.swift
//  MillionaireApp
//
//  Created by Никита Ясеник on 12.02.2023.
//

import UIKit


enum Resources {
    
    enum Images {
        static let backroundImage = UIImage(named: "backgroundImage")
        static let logoImage = UIImage(named: "logoImage")
        static let backgroundMoneyImage = UIImage(named: "backgroundMoney")
        static let pinkRectangleBackground = UIImage(named: "pink_rectangle")
        static let greenRectangleBackground = UIImage(named: "green_rectangle")
        static let redRectangleBackground = UIImage(named: "red_rectangle")
        static let yellowRectangleBackground = UIImage(named: "yellow_rectangle")
        static let blueRectangleBackground = UIImage(named: "blue_rectangle")
    }
    
    enum Strings {
        static let welcomeText = "Welcome"
        static let nameGameText = "to Who Wants \n to be a Millionaire"
        static let enterNicknameText = "Enter your nickname"
        static let startGameText = "Start Game"
        static let rulesText = "Правила игры"
        static let registerText = "Register"
    }
}

var sumsForQuestions: [Int: Int] = [
    1: 1_00,
    2: 2_00,
    3: 3_00,
    4: 5_00,
    5: 1_000,
    6: 2_000,
    7: 4_000,
    8: 8_000,
    9: 16_000,
    10: 32_000,
    11: 64_000,
    12: 125_000,
    13: 250_000,
    14: 500_000,
    15: 1_000_000,
    
]
