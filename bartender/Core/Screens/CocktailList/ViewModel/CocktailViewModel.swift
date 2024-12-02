//
//  File.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import Foundation


class CocktailViewModel: ObservableObject {
    
    @Published var drinks = [Drink]()
    private let service = CocktailService()
    
    init() {
        fetchDrinks()
    }
    
    func fetchDrinks() {
        service.fetchData { [weak self] drink in
            DispatchQueue.main.async {
                self?.drinks = drink
            }
        }
        
    }
}
