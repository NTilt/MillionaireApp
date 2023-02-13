//
//  SelectNicknameController.swift
//  MillionaireApp
//
//  Created by Никита Ясеник on 13.02.2023.
//

import UIKit

final class SelectNicknameController: BaseController {
    
    private let selectNicknameView = SelectNicknameView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
    
}

extension SelectNicknameController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(selectNicknameView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            selectNicknameView.topAnchor.constraint(equalTo: view.topAnchor),
            selectNicknameView.leftAnchor.constraint(equalTo: view.leftAnchor),
            selectNicknameView.rightAnchor.constraint(equalTo: view.rightAnchor),
            selectNicknameView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    override func configure() {
        super.configure()
        
        selectNicknameView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @objc func getNickname() -> String {
        selectNicknameView.getNicknameText()
    }
}
