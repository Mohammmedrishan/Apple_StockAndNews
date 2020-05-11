//
//  SearchView.swift
//  StockAppSwiftUI
//
//  Created by Mohammed Rishan on 10/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var SearchTerm: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "magnifyingglass")
            
            TextField("Search", text: self.$SearchTerm)
                .foregroundColor(Color.primary)
                .padding(10)
            
            Spacer()
            
        }.foregroundColor(.secondary)
        .background(Color(
            .secondarySystemBackground))
        .cornerRadius(10)
            .padding(10)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(SearchTerm: .constant(""))
    }
}
