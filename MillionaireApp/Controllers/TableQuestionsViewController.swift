//
//  TableQuestionsViewController.swift
//  MillionaireApp
//
//  Created by Никита Ясеник on 14.02.2023.
//

import UIKit


final class TableQuestionsViewController: BaseController {
    
    private let tableQuestionsView = TableQuestionsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
}

extension TableQuestionsViewController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(tableQuestionsView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            tableQuestionsView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableQuestionsView.topAnchor.constraint(equalTo: view.topAnchor),
            tableQuestionsView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableQuestionsView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        tableQuestionsView.translatesAutoresizingMaskIntoConstraints = false
    }
}
