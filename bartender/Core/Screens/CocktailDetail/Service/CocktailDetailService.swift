//
//  CocktailDetailService.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import Foundation


class CocktailDetailService {
    static var shared = CocktailService()
    
    var url = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php"
    
    func fechtDetail(drinkId: String, completion: @escaping([Drinks]) -> Void) {
        
        guard let urlString = URL(string: "\(url)?i=\(drinkId)") else { return }
        
        //print(urlString)
        
        URLSession.shared.dataTask(with: urlString) { data, response, error in
            guard let data = data else { return }
            
            do {
                let drink = try JSONDecoder().decode(DrinkReponse.self, from: data)
                //print("drink to service \(drink)")
                completion(drink.drinks)
            } catch {
                print("DEBUG: Faleid to decode detail \(error)")
            }
        }
        .resume()
    }
}
