//
//  SelectNicknameView.swift
//  MillionaireApp
//
//  Created by Никита Ясеник on 13.02.2023.
//

import UIKit

class SelectNicknameView: UIView {
    
    private let logoView = UIImageView()
    private let backgroundView = UIImageView()
    private let backgroundMoneyView = UIImageView()
    private let enterNicknameLabel = UILabel()
    private let textField = UITextField()
    private let enterButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getNicknameText() -> String {
        textField.text ?? ""
    }
}

private extension SelectNicknameView {
    
    func addViews() {
        addSubview(backgroundView)
        addSubview(backgroundMoneyView)
        addSubview(logoView)
        addSubview(enterNicknameLabel)
        addSubview(textField)
        addSubview(enterButton)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.leftAnchor.constraint(equalTo: leftAnchor),
            backgroundView.rightAnchor.constraint(equalTo: rightAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backgroundMoneyView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundMoneyView.leftAnchor.constraint(equalTo: leftAnchor),
            backgroundMoneyView.rightAnchor.constraint(equalTo: rightAnchor),
            backgroundMoneyView.topAnchor.constraint(equalTo: topAnchor, constant: 600),
            
            logoView.topAnchor.constraint(equalTo: topAnchor , constant: 49),
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 201),
            logoView.widthAnchor.constraint(equalToConstant: 201),
            
            enterNicknameLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 20),
            enterNicknameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            enterNicknameLabel.heightAnchor.constraint(equalToConstant: 71),
            enterNicknameLabel.widthAnchor.constraint(equalToConstant: 404),
            
            textField.topAnchor.constraint(equalTo: enterNicknameLabel.bottomAnchor, constant: 15),
            textField.centerXAnchor.constraint(equalTo: centerXAnchor),
            textField.widthAnchor.constraint(equalToConstant: 261),
            textField.heightAnchor.constraint(equalToConstant: 47),
            
            enterButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 25),
            enterButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: 267),
            enterButton.heightAnchor.constraint(equalToConstant: 47)
            
        ])
    }
    
    func configureViews() {
        backgroundView.image = Resources.Images.backroundImage
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundMoneyView.image = Resources.Images.backgroundMoneyImage
        backgroundMoneyView.translatesAutoresizingMaskIntoConstraints = false
        
        logoView.image = Resources.Images.logoImage
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        enterNicknameLabel.text = Resources.Strings.enterNicknameText
        enterNicknameLabel.translatesAutoresizingMaskIntoConstraints = false
        enterNicknameLabel.textColor = .white
        enterNicknameLabel.font = .systemFont(ofSize: 28)
        enterNicknameLabel.textAlignment = .center
        
        textField.backgroundColor = .clear
        textField.borderStyle = .roundedRect
        textField.layer.borderColor = UIColor.white.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 10
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        enterButton.setTitle(Resources.Strings.registerText, for: .normal)
        enterButton.setTitleColor(UIColor.white, for: .normal)
        enterButton.addTarget(nil, action: #selector(SelectNicknameController.getNickname), for: .touchUpInside)
        enterButton.clipsToBounds = true
        enterButton.layer.cornerRadius = 10
        enterButton.backgroundColor = .systemBlue
        enterButton.translatesAutoresizingMaskIntoConstraints = false
    }
}
