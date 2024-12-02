//
//  ContentView.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import SwiftUI

struct CocktailListView: View {
    
    @StateObject var viewModel = CocktailViewModel()
    
    private let adptiveColumn = [
        GridItem( .adaptive (minimum: 180, maximum: 320))
    ]
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                
                FilterBarView()
                    .padding()
                
                LazyVGrid(columns: adptiveColumn, spacing: 20) {
                    ForEach(viewModel.drinks) { drink in
                        NavigationLink(value: drink) {
                            CocktailCardView(drink: drink)
                        }
                    }
                }
                .navigationTitle("Cocktail List")
            }
            .navigationDestination(for: Drink.self) { drink in
                CocktailDetailView(idDrink: drink.idDrink)
            }
        }
        
    }
}

#Preview {
    CocktailListView()
}
