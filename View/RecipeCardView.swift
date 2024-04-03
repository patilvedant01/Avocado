//
//  RecipeCardView.swift
//  Avacado
//
//  Created by Vedant Patil on 02/04/24.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK:- PROPERTIES
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State var showDetailView : Bool = false
    @Environment(\.colorScheme) var colorScheme
    
    //MARK:- VIEW
    var body: some View {
        
        let backgroundColor = colorScheme == .dark ? Color.black : Color.white
        
        let borderColor = colorScheme == .dark ? Color.white : Color.black
        
        VStack(alignment: .leading, spacing: 20){
            //card photo
            Image(recipe.image)
              .resizable()
              .scaledToFit()
              .overlay(
                HStack {
                  Spacer()
                  VStack {
                    Image(systemName: "bookmark")
                      .font(Font.title.weight(.light))
                      .foregroundColor(Color.white)
                      .imageScale(.small)
                      .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                      .padding(.trailing, 20)
                      .padding(.top, 22)
                    Spacer()
                  }
                }
              )
              .cornerRadius(12)
             
            
            VStack(alignment: .leading, spacing: 12) {
              // TITLE
              Text(recipe.title)
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenMedium"))
                .lineLimit(1)
              
              // HEADLINE
              Text(recipe.headline)
                .font(.system(.body, design: .serif))
                .foregroundColor(Color.gray)
                .italic()
              
              // RATING
              RecipeRatingView(recipe: recipe)
              
              // COOKING
              RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }

        .background(
                    RoundedRectangle(cornerRadius: 12)
                        // Apply corner radius
                        .stroke(borderColor, lineWidth: 2) // Apply border with color
                )
        .background(backgroundColor)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showDetailView = true
        }
        .sheet(isPresented: $showDetailView){
            RecipeDetailView(recipe: recipe)
        }
        
    }
}

#Preview {
    RecipeCardView(recipe: RecipeData[0])
}
