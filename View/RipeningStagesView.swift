//
//  RipeningStagesView.swift
//  Avacado
//
//  Created by Vedant Patil on 02/04/24.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK:- PROPERTIES
    var ripening: [Ripening] = ripeningData
    
    //MARK:- VIEW
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
          VStack {
            Spacer()
            HStack(alignment: .center, spacing: 25) {
              ForEach(ripening) { item in
                RipeningView(ripening: item)
              }
            }
            .padding(.vertical)
            .padding(.horizontal, 25)
            Spacer()
          }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    RipeningStagesView(ripening: ripeningData)
}
