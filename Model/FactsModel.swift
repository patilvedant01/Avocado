//
//  FactsModel.swift
//  Avacado
//
//  Created by Vedant Patil on 02/04/24.
//

import SwiftUI

struct Fact : Identifiable{
    var id = UUID()
    var image: String
    var content: String 
}
