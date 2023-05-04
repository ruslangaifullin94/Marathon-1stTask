//
//  MainView.swift
//  1stTask
//
//  Created by Руслан Гайфуллин on 04.05.2023.
//

import UIKit

class MainView: UIView {
    
    weak var delegate: ViewControllerDelegate?

    private lazy var firstButton: UIButton = {
        let button = UIButton()
        button.setTitle("First Button", for: .normal)
        button.setImage(UIImage(systemName: "arrowshape.turn.up.right.circle.fill"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.tintColor = .white
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.contentEdgeInsets.left = 14
        button.contentEdgeInsets.right = 14
        button.contentEdgeInsets.top = 10
        button.contentEdgeInsets.bottom = 10
//        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -button.imageView!.frame.width, bottom: 0, right: button.imageView!.frame.width)
//        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: button.frame.width - button.imageView!.frame.width, bottom: 0, right: 0)
        return button
    }()
    
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("Second Medium Button", for: .normal)
        button.setImage(UIImage(systemName: "arrowshape.turn.up.right.circle.fill"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)

        button.tintColor = .white
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.contentEdgeInsets.left = 14
        button.contentEdgeInsets.right = 14
        button.contentEdgeInsets.top = 10
        button.contentEdgeInsets.bottom = 10
        return button
    }()
    
    private lazy var thirdButton: UIButton = {
        let button = UIButton()
        button.setTitle("Third", for: .normal)
        button.setImage(UIImage(systemName: "arrowshape.turn.up.right.circle.fill"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)

        button.tintColor = .white
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.contentEdgeInsets.left = 14
        button.contentEdgeInsets.right = 14
        button.contentEdgeInsets.top = 10
        button.contentEdgeInsets.bottom = 10
        button.addTarget(self, action: #selector(didTapThirdButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: .zero)
        setupView()
        setupConstraits()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setupView() {
        addSubview(firstButton)
        addSubview(secondButton)
        addSubview(thirdButton)
    }
    
    
    
    private func setupConstraits() {
        let imageWidth = firstButton.imageView?.frame.width ?? .zero
        let buttonWidth = firstButton.frame.width
        
        
        firstButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageWidth, bottom: 0, right: imageWidth)
        firstButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: buttonWidth - imageWidth, bottom: 0, right: 0)
        
        NSLayoutConstraint.activate([
            
            firstButton.topAnchor.constraint(equalTo: topAnchor, constant: 10),
//            firstButton.heightAnchor.constraint(equalToConstant: 20),
            firstButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 10),
//            secondButton.heightAnchor.constraint(equalToConstant: 20),
            secondButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 10),
//            thirdButton.heightAnchor.constraint(equalToConstant: 20),
            thirdButton.centerXAnchor.constraint(equalTo: centerXAnchor)
            
        ])
        
    }
    
    func buttonChangeColorToNormal() {
        firstButton.backgroundColor = .blue
        secondButton.backgroundColor = .blue
        thirdButton.backgroundColor = .blue
    }
    
   private func buttonChangeColorToGray() {
        firstButton.backgroundColor = .gray
        secondButton.backgroundColor = .gray
        thirdButton.backgroundColor = .gray
    }
    
    
    
    @objc private func didTapFirstButton() {
        
    }
    
    @objc private func didTapSecondButton() {
        
        
    }
    
    @objc private func didTapThirdButton() {
        print("work")
        buttonChangeColorToGray()
        delegate?.presentModal()
    }
  

}
