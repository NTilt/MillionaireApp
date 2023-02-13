//
//  TableQuestionsView.swift
//  MillionaireApp
//
//  Created by Никита Ясеник on 14.02.2023.
//

import UIKit

class TableQuestionsView: UIView {
    
    private let backgroundImageView = UIImageView()
    private let tableView = UITableView()
    private let logoImageView = UIImageView()
    
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

private extension TableQuestionsView {
    
    func addViews() {
        addSubview(backgroundImageView)
        addSubview(tableView)
        addSubview(logoImageView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            backgroundImageView.leftAnchor.constraint(equalTo: leftAnchor),
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.rightAnchor.constraint(equalTo: rightAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 90),
            logoImageView.heightAnchor.constraint(equalToConstant: 90),
            
            tableView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            tableView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            tableView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30)
        ])
    }
    
    func configureViews() {
        
        backgroundImageView.image = Resources.Images.backroundImage
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        logoImageView.image = Resources.Images.logoImage
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.register(TableQuestionsCellView.self, forCellReuseIdentifier: "\(TableQuestionsCellView.self)")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.isScrollEnabled = false
        tableView.separatorColor = .clear
        tableView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        tableView.allowsSelection = false
    }
}

extension TableQuestionsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(TableQuestionsCellView.self)", for: indexPath) as? TableQuestionsCellView else {
            return UITableViewCell()
        }
        cell.selectionStyle = .default
        cell.setQuestionNumberAndBackground(number: indexPath.section + 1)
        cell.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = backgroundColor
        return headerView
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 11
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(40)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
}
