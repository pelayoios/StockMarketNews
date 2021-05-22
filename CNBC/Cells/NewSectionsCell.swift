//
//  NewSectionsCell.swift
//  CNBC
//
//  Created by Miguel Pelayo Mercado Caram on 5/18/21.
//

import UIKit

class NewSectionsCell: UICollectionViewCell, ConfiguringCell {
    static var reuseIdentifier: String = "NewSectionCell"
    
    
    @IBOutlet weak var bubbleView: UIView!
    @IBOutlet weak var title: UILabel!
    
    
    static func nib() -> UINib {
        return UINib(nibName: "NewSectionsCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        bubbleView.layer.cornerRadius = bubbleView.frame.size.height / 3
    }
    func configure(with news: News) {
        title.text = news.name
    }

}
