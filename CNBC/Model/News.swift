//
//  News.swift
//  CNBC
//
//  Created by Miguel Pelayo Mercado Caram on 5/17/21.
//

import Foundation

struct News: Decodable, Hashable {
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
