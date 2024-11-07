//
//  ViewController.swift
//  UIKit2-AutoLayout
//
//  Created by Juan Pablo Lasprilla Correa on 7/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let onboardingImageView: UIView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "rickandmorty")
        
        //This property allows us to add constraints by code
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Bienvenido a la app de Rick and Morty"
        label.font = UIFont(name: "Arial Round MT Bold", size: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var skipOnBoardButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Pulsar para continuar"
        config.subtitle = "Onboarding"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        [onboardingImageView, textLabel, skipOnBoardButton].forEach(view.addSubview)
        
        //Implement the Contraint to onboardingImageView
        NSLayoutConstraint.activate([
            onboardingImageView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -32),
            onboardingImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            onboardingImageView.leadingAnchor.constraint(equalTo: view.trailingAnchor),
            onboardingImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textLabel.bottomAnchor.constraint(equalTo: skipOnBoardButton.topAnchor, constant: -42),
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            skipOnBoardButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            skipOnBoardButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
        ])
    }
    
    @objc func showMessage() {
        print("Skip onboarding")
    }


}

