// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cocktailListModel = try? JSONDecoder().decode(CocktailListModel.self, from: jsonData)

import Foundation

// MARK: - CocktailListModel
struct CocktailListModel: Codable {
    let drinks: [Drink]
}

// MARK: - Drink
struct Drink: Codable, Hashable, Identifiable {
    let strDrink: String
    let strDrinkThumb: String
    let idDrink: String
    
    var id: String {
        return idDrink
    }
}
