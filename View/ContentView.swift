//
//  ContentView.swift
//  Avacado
//
//  Created by Vedant Patil on 01/04/24.
//

import SwiftUI

struct ContentView: View {
    //MARK:- PROPERTIES
    var headers : [Header] = headersData
    
    var facts : [Fact] = factsData
    
    var recipes : [Recipe] = RecipeData
    
    //MARK:- VIEW
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                //Mark:- HEADER
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(alignment: .top,spacing: 0){
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                //Mark :- dishes
                Text("Avocado Dishes")
                    .modifier(TitleModifier())
                
               //Mark:- Dishes View
                DishesView()
                    .frame(maxWidth: 640)
                
                //Mark:- Facts
                Text("Avocado facts")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(alignment: .top,spacing: 60){
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                //Mark:- Recipe cards
                
                Text("Avocado Recipes")
                  .fontWeight(.bold)
                  .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                  ForEach(recipes) { item in
                    RecipeCardView(recipe: item)
                  }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                //Mark: FOOTER
                VStack (alignment: .center, spacing: 20 ){
                    Text("All About Avocados")
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding(0)
    }
}

struct TitleModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

#Preview {
    ContentView()
}
