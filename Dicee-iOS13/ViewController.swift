//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let arrayNumbers = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "GreenBackground")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageViewLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "DiceeLogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageCubeOne: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "DiceOne")
        imageView.alpha = 0.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageCubeTwo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "DiceOne")
        imageView.alpha = 0.5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let buttonRoll: UIButton = {
        let button = UIButton()
        button.setTitle("Roll", for: .normal)
        button.backgroundColor = UIColor(named: "Color")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        view.addSubview(imageViewLogo)
        view.addSubview(imageCubeOne)
        view.addSubview(imageCubeTwo)
        view.addSubview(buttonRoll)
        
        buttonRoll.addTarget(self, action: #selector(press), for: .touchUpInside)
        
        setupConstraints()
        
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            imageViewLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imageViewLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imageCubeOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            imageCubeOne.topAnchor.constraint(equalTo: imageViewLogo.topAnchor, constant: 250),
            imageCubeOne.widthAnchor.constraint(equalToConstant: 120),
            imageCubeOne.heightAnchor.constraint(equalToConstant: 120),
            
            imageCubeTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            imageCubeTwo.topAnchor.constraint(equalTo: imageViewLogo.topAnchor, constant: 250),
            imageCubeTwo.widthAnchor.constraint(equalToConstant: 120),
            imageCubeTwo.heightAnchor.constraint(equalToConstant: 120),
            
            buttonRoll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            buttonRoll.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonRoll.widthAnchor.constraint(equalToConstant: 200),
            buttonRoll.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    @objc private func press() {
        imageCubeOne.image = arrayNumbers.randomElement()
        imageCubeTwo.image = arrayNumbers.randomElement()
    }

}

