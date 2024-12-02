//
//  FilterBarView.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import SwiftUI

struct FilterBarView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 16) {
                
                
                FilterOption(title: "Alchoolic")
                FilterOption(title: "Not Alchoolic")
                FilterOption(title: "Ordinary Drin")
                FilterOption(title: "Cocktail")
                FilterOption(title: "Champagne Flute")
                
                
            }
        }
    }
}

#Preview {
    FilterBarView()
}
