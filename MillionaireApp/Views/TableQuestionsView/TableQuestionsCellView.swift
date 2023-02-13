//
//  TableQuestionsCellView.swift
//  MillionaireApp
//
//  Created by Никита Ясеник on 14.02.2023.
//

import UIKit

class TableQuestionsCellView: UITableViewCell {
    
    private let backgroundImage = UIImageView()
    private let questionNumberLabel = UILabel()
    private let questionPriceLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addViews()
        layoutViews()
        configureViews()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setQuestionNumberAndBackground(number: Int) {
        questionNumberLabel.text = "Вопрос \(number)"
        questionPriceLabel.text = number == 15 ? "1 Миллион": "\(sumsForQuestions[number]!) RUB"
        switch number {
        case 5, 10:
            backgroundImage.image = Resources.Images.blueRectangleBackground
        case 15:
            backgroundImage.image = Resources.Images.yellowRectangleBackground
        default:
            backgroundImage.image = Resources.Images.pinkRectangleBackground
        }
    }
}

private extension TableQuestionsCellView {
    
    func addViews() {
        addSubview(backgroundImage)
        addSubview(questionNumberLabel)
        addSubview(questionPriceLabel)
    }
    
    func layoutViews() {
        
        NSLayoutConstraint.activate([
            backgroundImage.leftAnchor.constraint(equalTo: leftAnchor),
            backgroundImage.rightAnchor.constraint(equalTo: rightAnchor),
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            questionNumberLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            questionNumberLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
            
            questionPriceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            questionPriceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -15)
        ])
    }
    
    func configureViews() {
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = .clear
        contentView.layer.cornerRadius = 15
        layer.masksToBounds = true
        self.contentMode = .center
        
        questionNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        questionNumberLabel.textColor = .white
        questionNumberLabel.font = .systemFont(ofSize: 20)
        
        questionPriceLabel.text = "1 Миллион"
        questionPriceLabel.font = .systemFont(ofSize: 20)
        questionPriceLabel.textColor = .white
        questionPriceLabel.translatesAutoresizingMaskIntoConstraints = false
    }
}
