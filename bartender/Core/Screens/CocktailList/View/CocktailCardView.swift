//
//  CocktailCardView.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import SwiftUI

struct CocktailCardView: View {
    
    var drink: Drink
    
    var body: some View {
        VStack {
            
            VStack {
                AsyncImage(url: URL(string: "\(drink.strDrinkThumb)/preview")) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 140, height: 140)
                } placeholder: {
                    Rectangle()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 140, height: 140)
                }
            }
                
            Divider()
            
            VStack(alignment: .leading, spacing: 8) {
                Text(drink.strDrink)
                    .fontWeight(.semibold)
                
                Text("Alchoolic")
                    .font(.subheadline)
            }
            .foregroundStyle(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .padding(.vertical, 20)
        .background(.white)
        .frame(width: 180, height: 280)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 10)
    }
}

#Preview {
    CocktailCardView(drink: DeveloperPreview().drinks[2])
}
