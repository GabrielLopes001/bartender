//
//  DetailModel.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let detailModel = try? JSONDecoder().decode(DetailModel.self, from: jsonData)

import Foundation

// MARK: - DetailModel


struct DrinkReponse: Codable {
    let drinks: [Drinks]
}

struct Drinks: Codable, Hashable {
    var idDrink: String
    let strDrink: String
    let strCategory: String
    let strAlcoholic: String
    let strGlass: String
    let strInstructions: String
    let strDrinkThumb: String
    let strIngredient1: String
    let strIngredient2: String
    let strIngredient3: String?  // Tornando opcional
    let strIngredient4: String?  // Tornando opcional
    let strIngredient5: String?  // Tornando opcional
    let strIngredient6: String?  // Tornando opcional
    let strIngredient7: String?  // Tornando opcional
    let strIngredient8: String?  // Tornando opcional
    let strIngredient9: String?  // Tornando opcional
    let strIngredient10: String? // Tornando opcional
    let strIngredient11: String? // Tornando opcional
    let strIngredient12: String? // Tornando opcional
    let strIngredient13: String? // Tornando opcional
    let strIngredient14: String? // Tornando opcional
    let strIngredient15: String? // Tornando opcional
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
}


struct Ingredients: Codable {
    let strIngredient1: String
    let strIngredient2: String
    let strIngredient3: String
    let strIngredient4: String
    let strIngredient5: String
    let strIngredient6: String
    let strIngredient7: String
    let strIngredient8: String
    let strIngredient9: String
    let strIngredient10: String
    let strIngredient11: String
    let strIngredient12: String
    let strIngredient13: String
    let strIngredient14: String
    let strIngredient15: String
}

struct Measures: Codable {}

