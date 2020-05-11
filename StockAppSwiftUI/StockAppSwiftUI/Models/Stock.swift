//
//  Stock.swift
//  StockAppSwiftUI
//
//  Created by Mohammed Rishan on 10/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import Foundation

struct Stock: Decodable {
    
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
