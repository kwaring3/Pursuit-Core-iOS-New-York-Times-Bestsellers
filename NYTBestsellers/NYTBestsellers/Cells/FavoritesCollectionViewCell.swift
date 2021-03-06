//
//  FavoritesCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Kevin Waring on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesCollectionViewCell: UICollectionViewCell {
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("...", for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura", size: 50)
        button.setTitleColor(.black , for: .normal)
        return button
    }()
    lazy var bookImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .white
        return image
    }()
    lazy var bookLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.font = UIFont.systemFont(ofSize: 15.0)
        return label
    }()
    lazy var bookText: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .white
        textView.isEditable = false
        return textView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        fatalError("init(coder:) has not been implemented")
    }
    private func commonInit() {
        setupCells()
    }
}
extension FavoritesCollectionViewCell {
    private func setupCells() {
        setupImageView()
        setupLabel()
        setupTextView()
        setUpButton()
    }
    private func setupImageView() {
        addSubview(bookImage)
        bookImage.translatesAutoresizingMaskIntoConstraints = false
        bookImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        bookImage.heightAnchor.constraint(equalToConstant: 130).isActive = true
        bookImage.widthAnchor.constraint(equalToConstant: 90).isActive = true
        bookImage.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
    }
    private func setupLabel() {
        addSubview(bookLabel)
        bookLabel.translatesAutoresizingMaskIntoConstraints = false
        bookLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        bookLabel.topAnchor.constraint(equalTo: bookImage.bottomAnchor, constant: 5).isActive = true
        bookLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        bookLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        bookLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    private func setupTextView() {
        addSubview(bookText)
        bookText.translatesAutoresizingMaskIntoConstraints = false
        bookText.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        bookText.topAnchor.constraint(equalTo: bookLabel.bottomAnchor, constant: 10).isActive = true
        bookText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
        bookText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        bookText.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        
    }
    private func setUpButton() {
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}
