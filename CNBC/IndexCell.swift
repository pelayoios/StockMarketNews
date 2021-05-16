//
//  IndexCell.swift
//  CNBC
//
//  Created by Miguel Pelayo Mercado Caram on 5/14/21.
//

import UIKit

protocol btnPressedProtocol {
    func btnPressed()
}

class IndexCell: UICollectionViewCell {
    
    static let identifier = "indexCell"
    
    @IBOutlet weak var title: UILabel!
    var delegate: btnPressedProtocol?
    
  
    @IBOutlet weak var btn: UIButton!
    static func nib() -> UINib {
        return UINib(nibName: "IndexCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func btnPressed(_ sender: UIButton) {
        delegate?.btnPressed()
    }
}
