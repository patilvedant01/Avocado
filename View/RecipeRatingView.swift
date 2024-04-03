//
//  RecipeRatingView.swift
//  Avacado
//
//  Created by Vedant Patil on 03/04/24.
//

import SwiftUI

struct RecipeRatingView: View {
    //MARK:- PROPERTIES
    var recipe : Recipe
    
    //MARK:- VIEW
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
          ForEach(1...(recipe.rating), id: \.self) { _ in
            Image(systemName: "star.fill")
              .font(.body)
              .foregroundColor(Color.yellow)
          }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: RecipeData[0])
}
