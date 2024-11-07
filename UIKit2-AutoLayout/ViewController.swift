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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        view.addSubview(onboardingImageView)
        
        //Implement the Contraint to onboardingImageView
        NSLayoutConstraint.activate([
            onboardingImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            onboardingImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
        ])
    }


}

