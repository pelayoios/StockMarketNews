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

class IndexCell: UICollectionViewCell, ConfiguringCell {
    
    static let reuseIdentifier: String = "indexCell"
    var delegate: btnPressedProtocol?
    
  //outlets
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var subTitleLbl: UIButton!
    
    //Square 1
    
    @IBOutlet weak var square1TitleLbl: UILabel!
    @IBOutlet weak var square1subTitleLbl: UILabel!
    @IBOutlet weak var square1ImageView: UIImageView!
    @IBOutlet weak var square1gainLbl: UILabel!
    @IBOutlet weak var square1PercentageLbl: UILabel!
    @IBOutlet weak var square1Color: UIView!
    //Square 2
    
    @IBOutlet weak var square2TitleLbl: UILabel!
    @IBOutlet weak var square2subTitleLbl: UILabel!
    @IBOutlet weak var square2ImageView: UIView!
    @IBOutlet weak var square2gainLbl: UILabel!
    @IBOutlet weak var square2PercentageLbl: UILabel!
    @IBOutlet weak var square2Color: UIView!
    //Square 3
    
    @IBOutlet weak var square3TitleLbl: UILabel!
    @IBOutlet weak var square3subTitleLbl: UILabel!
    @IBOutlet weak var square3ImageView: UIImageView!
    @IBOutlet weak var square3gainLbl: UILabel!
    @IBOutlet weak var square3PercentageLbl: UILabel!
    @IBOutlet weak var square3Color: UIView!
    
 
    
    static func nib() -> UINib {
        return UINib(nibName: "IndexCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

 
    
    @IBAction func subtitleBtnPressed(_ sender: UIButton) {
        delegate?.btnPressed()
    }
    @IBAction func seeAllBtnPressed(_ sender: UIButton) {
        delegate?.btnPressed()
    }
    
    @IBAction func square1BtnPressed(_ sender: UIButton) {
        delegate?.btnPressed()
    }
    @IBAction func square2BtnPressed(_ sender: UIButton) {
        delegate?.btnPressed()
    }
    
    @IBAction func square3BtnPressed(_ sender: UIButton) {
        delegate?.btnPressed()
    }
    
    func configure(with news: News) {
        square1TitleLbl.text = news.tagline.uppercased()
    }
    
}
