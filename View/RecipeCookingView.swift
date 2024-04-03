//
//  RecipeCookingView.swift
//  Avacado
//
//  Created by Vedant Patil on 03/04/24.
//

import SwiftUI

struct RecipeCookingView: View {
    //MARK:- PROPERTIES
    var recipe : Recipe
    
    //MARK:- VIEW
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
          HStack(alignment: .center, spacing: 2) {
            Image(systemName: "person.2")
            Text("Serves: \(recipe.serves)")
          }
          HStack(alignment: .center, spacing: 2) {
            Image(systemName: "clock")
            Text("Prep: \(recipe.preparation)")
          }
          HStack(alignment: .center, spacing: 2) {
            Image(systemName: "flame")
            Text("Cooking: \(recipe.cooking)")
          }
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: RecipeData[0])
}
