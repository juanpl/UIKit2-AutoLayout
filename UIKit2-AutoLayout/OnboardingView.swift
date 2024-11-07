//
//  OnboardingView.swift
//  UIKit2-AutoLayout
//
//  Created by Juan Pablo Lasprilla Correa on 7/11/24.
//

import Foundation
import UIKit

final class OnboardingView: UIView {
    
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
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview()
        configureContraints()
    }
    
    private func addSubview() {
        [onboardingImageView, textLabel, skipOnBoardButton].forEach(addSubview)
    }
    
    private func configureContraints() {
        //Implement the Contraint to onboardingImageView
        NSLayoutConstraint.activate([
            onboardingImageView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -32),
            onboardingImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            onboardingImageView.leadingAnchor.constraint(equalTo: trailingAnchor),
            onboardingImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            textLabel.bottomAnchor.constraint(equalTo: skipOnBoardButton.topAnchor, constant: -42),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            skipOnBoardButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            skipOnBoardButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
    }
    
    @objc func showMessage() {
        print("Skip onboarding")
    }
}
