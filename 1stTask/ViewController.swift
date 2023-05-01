//
//  ViewController.swift
//  1stTask
//
//  Created by Руслан Гайфуллин on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
   private let viewGradient: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
       view.layer.cornerRadius = 20
       view.layer.shadowColor = UIColor.black.cgColor
       view.layer.shadowRadius = 10
       view.layer.shadowOpacity = 0.4
       view.layer.shadowOffset = CGSize(width: 0, height: 5)
        return view
    }()

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupGradient()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        print(viewGradient.bounds)
    }
    
    
    private func setupGradient() {
        let gradient = CAGradientLayer()
        gradient.frame = viewGradient.bounds
        gradient.colors = [UIColor.cyan.cgColor, UIColor.orange.cgColor]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.cornerRadius = 20
       
        
        viewGradient.layer.addSublayer(gradient)
        
    }
    
    private func setupView() {
        
//        let safeArea = view.safeAreaLayoutGuide
        view.addSubview(viewGradient)
        

        
        NSLayoutConstraint.activate([
            viewGradient.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            viewGradient.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            viewGradient.widthAnchor.constraint(equalToConstant: 100),
            viewGradient.heightAnchor.constraint(equalToConstant: 100)

        ])
    }


}

