//
//  ConfiguringCell.swift
//  CNBC
//
//  Created by Miguel Pelayo Mercado Caram on 5/17/21.
//

import Foundation

protocol ConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with news: News)
}
