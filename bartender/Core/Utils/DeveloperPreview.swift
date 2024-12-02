//
//  DeveloperPreview.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import Foundation


class DeveloperPreview {
    
    var drinks: [Drink] = [
    
        .init(strDrink: "57 Chevy with a White License Plate",
              strDrinkThumb: "https://www.thecocktaildb.com/images/media/drink/xxyywq1454511117.jpg",
              idDrink: "14029"),
        
            .init(strDrink: "151 Florida Bushwacker",
                  strDrinkThumb: "https://www.thecocktaildb.com/images/media/drink/rvwrvv1468877323.jpg",
                  idDrink: "14588"),
        
            .init(strDrink: "155 Belmont",
                  strDrinkThumb: "https://www.thecocktaildb.com/images/media/drink/yqvvqs1475667388.jpg",
                  idDrink: "15346")
    ]
    
    var drink: Drinks = .init(idDrink: "11007",
                              strDrink: "Mojito",
                              strCategory: "Cocktail",
                              strAlcoholic: "Alcoholic",
                              strGlass: "Highball glass",
                              strInstructions: "Muddle mint leaves with sugar and lime juice. Add rum, top with soda water, and garnish with a sprig of mint.",
                              strDrinkThumb: "https://www.thecocktaildb.com/images/media/drink/3z6xdi1504366191.jpg",
                              strIngredient1: "Mint",
                              strIngredient2: "White rum",
                              strIngredient3: "Lime juice",
                              strIngredient4: "Sugar",
                              strIngredient5: "Soda water",
                              strIngredient6: "",
                              strIngredient7: "",
                              strIngredient8: "",
                              strIngredient9: "",
                              strIngredient10: "",
                              strIngredient11: "",
                              strIngredient12: "",
                              strIngredient13: "",
                              strIngredient14: "",
                              strIngredient15: "",
                              strMeasure1: "10 leaves",
                              strMeasure2: "50 ml",
                              strMeasure3: "25 ml",
                              strMeasure4: "2 teaspoons",
                              strMeasure5: "Top up",
                              strMeasure6: "",
                              strMeasure7: "",
                              strMeasure8: "",
                              strMeasure9: "",
                              strMeasure10: "",
                              strMeasure11: "",
                              strMeasure12: "",
                              strMeasure13: "",
                              strMeasure14: "",
                              strMeasure15: "")
}
