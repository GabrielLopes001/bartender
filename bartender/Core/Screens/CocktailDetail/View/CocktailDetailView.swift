//
//  CocktailDetailView.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import SwiftUI

struct CocktailDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = CocktailDetailViewModel()
    var idDrink: String
    
    var body: some View {
        ScrollView {
            if let drink = viewModel.drink.first {
                VStack(alignment: .leading, spacing: 8) {
                    
                    AsyncImage(url: URL(string: "\(drink.strDrinkThumb)/preview")) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                    } placeholder: {
                        Rectangle()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .frame(width: 480, height: 380)
                    }
                    .overlay(alignment: .topLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.backward")
                                .foregroundStyle(.black)
                                .background {
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 32, height: 32)
                                        .scaledToFill()
                                }
                                .padding(32)
                        }
                    }
                    
                    // title view
                    VStack(alignment: .leading, spacing: 8) {
                        Text(drink.strDrink)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text(drink.strCategory)
                            .font(.subheadline)
                    }
                    .padding(10)
                    
                    Divider()
                    
                    // ingredients view
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Ingredients")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text(drink.strIngredient1)
                            .font(.footnote)
                        Text(drink.strIngredient2)
                            .font(.footnote)
                        Text(drink.strIngredient3 ?? "")
                            .font(.footnote)
                        Text(drink.strIngredient4 ?? "")
                            .font(.footnote)
                        Text(drink.strIngredient5 ?? "")
                            .font(.footnote)
                        
                    }
                    .padding()
                    
                    Divider()
                    
                    //preparation view
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Preparation")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text(drink.strInstructions)
                            .font(.subheadline)
                    }
                    .padding()
                }
            } else {
                ProgressView()
            }
        }
        .toolbar(.hidden, for: .navigationBar)
        .onAppear {
            viewModel.fetchDetail(idDrink: idDrink)
        }
        .padding(.bottom, 24)
        .ignoresSafeArea()
    }
}

#Preview {
    CocktailDetailView(idDrink: "11007")
}
