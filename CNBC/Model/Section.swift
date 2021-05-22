//
//  Section.swift
//  CNBC
//
//  Created by Miguel Pelayo Mercado Caram on 5/17/21.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [News]
}
