//
//  FilterOption.swift
//  bartender
//
//  Created by Gabriel Lopes on 29/11/24.
//

import SwiftUI

struct FilterOption: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 150, height: 30)
            .font(.subheadline)
            .foregroundStyle(.black)
            .fontWeight(.semibold)
            .clipShape(RoundedRectangle(cornerRadius: 13))
            .overlay {
                Capsule()
                    .stroke(lineWidth: 1.0)
                    .foregroundStyle(Color(.black))
                    .shadow(radius: 10)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
    }
}

#Preview {
    FilterOption(title: "Champagne Flute")
}
