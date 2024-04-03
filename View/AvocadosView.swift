//
//  AvocadosView.swift
//  Avacado
//
//  Created by Vedant Patil on 02/04/24.
//

import SwiftUI

struct AvocadosView: View {
    //MARK:- PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    //MARK:- VIEW
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240,height: 240,alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
            
            
            VStack {
              Text("Avocados".uppercased())
                .font(.system(size: 42, weight: .bold, design: .serif))
                .foregroundColor(Color.white)
                .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
              Text("""
      Creamy, green, and full of nutrients!
      Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
      """)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
        .onAppear(perform: {
          self.pulsateAnimation.toggle()
        })
    }
}

#Preview {
    AvocadosView()
        .colorScheme(.dark)
}
