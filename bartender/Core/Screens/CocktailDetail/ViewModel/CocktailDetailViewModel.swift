//
//  CocktailDetailViewModel.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import SwiftUI

class CocktailDetailViewModel: ObservableObject {
    
    @Published var drink = [Drinks]()
    var service = CocktailDetailService()
    
    
    func fetchDetail(idDrink: String) {
        service.fechtDetail(drinkId: idDrink) { [weak self] drink in
            DispatchQueue.main.async {
                self?.drink = drink
            }
        }
    }
}
