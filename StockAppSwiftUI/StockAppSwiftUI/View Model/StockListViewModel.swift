//
//  StockListViewModel.swift
//  StockAppSwiftUI
//
//  Created by Mohammed Rishan on 10/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import Foundation
import SwiftUI

class StockListViewModel: ObservableObject {
    
    @Published var dragOffset: CGSize = CGSize(width: 0, height: 650)
    @Published var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    @Published var news: [NewsArticleViewModel] = [NewsArticleViewModel]()

    
    func load() {
        fetchNews()
        fetchStock()
    }
    
    private func fetchStock() {
        
        WebService().getStocks { (stocks) in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
    }
    
    private func fetchNews() {
        
        WebService().getTopNews { (news) in
            if let news = news {
                DispatchQueue.main.async {
                    self.news = news.map(NewsArticleViewModel.init)
                }
            }
        }
    }
}
