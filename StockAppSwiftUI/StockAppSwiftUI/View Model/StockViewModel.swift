//
//  StockViewModel.swift
//  StockAppSwiftUI
//
//  Created by Mohammed Rishan on 10/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import Foundation

struct StockViewModel {
    
    let stocks: Stock
    
    var symbol: String {
        return self.stocks.symbol.uppercased()
    }
    
    var description: String {
        return self.stocks.description
    }
    
    var price: String {
        return String(format: "%.2f", self.stocks.price)
    }
    
    var change: String {
        return self.stocks.change
    }
}
