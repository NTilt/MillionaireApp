//
//  GreetingsView.swift
//  MillionaireApp
//
//  Created by Никита Ясеник on 12.02.2023.
//

import UIKit

class GreetingsView: UIView {
    
    private let logoView = UIImageView()
    private let backgroundView = UIImageView()
    private let welcomeLabel = UILabel()
    private let nameGameLabel = UILabel()
    private lazy var rulesButton = createCustonGreetingsButton(with: Resources.Strings.rulesText)
    private lazy var startGameButton = createCustonGreetingsButton(
        with: Resources.Strings.startGameText)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension GreetingsView {
    
    func addViews() {
        
        addSubview(backgroundView)
        addSubview(logoView)
        addSubview(welcomeLabel)
        addSubview(nameGameLabel)
        addSubview(rulesButton)
        addSubview(startGameButton)
    }
    
    func layoutViews() {
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 225),
            logoView.widthAnchor.constraint(equalToConstant: 225),
            
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.leftAnchor.constraint(equalTo: leftAnchor),
            backgroundView.rightAnchor.constraint(equalTo: rightAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            welcomeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 302),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 28),
            welcomeLabel.widthAnchor.constraint(equalToConstant: 100),
            
            nameGameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 339),
            nameGameLabel.heightAnchor.constraint(equalToConstant: 92),
            nameGameLabel.widthAnchor.constraint(equalToConstant: 404),
            
            rulesButton.topAnchor.constraint(equalTo: nameGameLabel.bottomAnchor, constant: 45),
            rulesButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            rulesButton.heightAnchor.constraint(equalToConstant: 74),
            
            startGameButton.topAnchor.constraint(equalTo: rulesButton.bottomAnchor, constant: 20),
            startGameButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            startGameButton.heightAnchor.constraint(equalToConstant: 74)
        ])
    }
    
    func configureViews() {
        
        logoView.image = Resources.Images.logoImage
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundView.image = Resources.Images.backroundImage
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        welcomeLabel.text = Resources.Strings.welcomeText
        welcomeLabel.textAlignment = .center
        welcomeLabel.textColor = .white
        welcomeLabel.font = .systemFont(ofSize: 24)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameGameLabel.text = Resources.Strings.nameGameText
        nameGameLabel.numberOfLines = 2
        nameGameLabel.textColor = .white
        nameGameLabel.textAlignment = .center
        nameGameLabel.font = .systemFont(ofSize: 36)
        nameGameLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func createCustonGreetingsButton(with text: String) -> UIButton {
        let button = UIButton(type: .system)
        let myAttributed = [
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 37),
            NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue,
            NSAttributedString.Key.underlineColor: UIColor.green,
            NSAttributedString.Key.foregroundColor: UIColor.green
        ] as [NSAttributedString.Key : Any]
        let attributedString = NSMutableAttributedString(string: text, attributes: myAttributed)
        button.setAttributedTitle(attributedString, for: .normal)
        button.setTitleColor(UIColor(named: "buttonTitleColor"), for: .normal)
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
