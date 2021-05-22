//
//  FeaturedCell.swift
//  CNBC
//
//  Created by Miguel Pelayo Mercado Caram on 5/20/21.
//

import UIKit

class FeaturedCell: UICollectionViewCell, ConfiguringCell{
    static var reuseIdentifier: String = "FeaturedCell"
    
    let tagline = UILabel()
    let title = UILabel()
    let saveBtn = UIButton(type: .custom)
    let submenuBtn = UIButton(type: .custom)
    let imageView = UIImageView()
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       
        
        tagline.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        tagline.textColor = .systemGray
        
        title.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 16, weight: .bold))
        title.textColor = .darkGray
        title.numberOfLines = 0
        
        imageView.layer.cornerRadius = 8
        
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        
        let imageViewWidthConstraint = NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 70)
        let imageViewHeightConstraint = NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 70)
        imageView.addConstraints([imageViewWidthConstraint, imageViewHeightConstraint])
        
        saveBtn.setImage(UIImage(systemName: "bookmark"), for: .normal)
        submenuBtn.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        
        let titleStackView = UIStackView(arrangedSubviews: [title, tagline])
        titleStackView.translatesAutoresizingMaskIntoConstraints = false
        titleStackView.axis = .vertical
        titleStackView.spacing = 0
        
        let btnStackView = UIStackView(arrangedSubviews: [saveBtn, submenuBtn])
        btnStackView.translatesAutoresizingMaskIntoConstraints = false
        btnStackView.axis = .horizontal
        btnStackView.spacing = 10
        btnStackView.distribution = .fillProportionally
        
        let imageStackView = UIStackView(arrangedSubviews:  [imageView, btnStackView])
        imageStackView.translatesAutoresizingMaskIntoConstraints = false
        imageStackView.axis = .vertical
        imageStackView.spacing = 2
        imageStackView.distribution = .fillProportionally
        imageStackView.alignment = .trailing
        
        let stackView = UIStackView(arrangedSubviews: [titleStackView, imageStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 0
        stackView.distribution = .fillProportionally
        
        
        contentView.addSubview(stackView)
        
        
        NSLayoutConstraint.activate([
            
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        
        
        ])
        
        stackView.setCustomSpacing(10, after: imageView)
        
    }
    
  
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with news: News) {
        imageView.image = UIImage(named: news.image)
        title.text = news.name
        tagline.text = news.tagline
        
    }
    
    
}
