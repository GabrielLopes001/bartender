//
//  CocktailService.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import Foundation


class CocktailService {
    static let shared = CocktailService()
    
    private var urlFilter = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic"
    
    func fetchData(completion: @escaping([Drink]) -> Void) {
        
        guard let urlString = URL(string: urlFilter) else { return }
        
        URLSession.shared.dataTask(with: urlString) { data, response, error in
            
            guard let data = data else { return }
            
            do {
                let drinks = try JSONDecoder().decode(CocktailListModel.self, from: data)
                
                completion(drinks.drinks)
            } catch {
                print("DEBUG: Failed to decode drinks \(error)")
            }
            
        }
        .resume()
    }
}
