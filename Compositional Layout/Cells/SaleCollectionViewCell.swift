//
//  SaleCollectionViewCell.swift
//  Compositional Layout
//
//  Created by Евгений Юнкин on 09.12.22.
//

import UIKit


class SaleCollectionViewCell: UICollectionViewCell {
    
    
    private let saleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setupView() {
        backgroundColor = .white
        addSubview(saleImageView)
    }
    
    
    func configureCell(imageName:String) {
        
        saleImageView.image = UIImage(named: imageName)
    }
    
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            saleImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            saleImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            saleImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            saleImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
    
    
    
    
    
    
    
    
}
