//
//  GreetingsViewController.swift
//  MillionaireApp
//
//  Created by Никита Ясеник on 12.02.2023.
//

import UIKit


final class GreetingsViewController: BaseController {
    
    private let greetingsView = GreetingsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
}

extension GreetingsViewController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(greetingsView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            greetingsView.topAnchor.constraint(equalTo: view.topAnchor),
            greetingsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            greetingsView.leftAnchor.constraint(equalTo: view.leftAnchor),
            greetingsView.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }
    
    override func configure() {
        super.configure()
        greetingsView.translatesAutoresizingMaskIntoConstraints = false
    }
}


