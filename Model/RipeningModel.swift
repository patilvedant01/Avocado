//
//  RipeningModel.swift
//  Avacado
//
//  Created by Vedant Patil on 03/04/24.
//

import SwiftUI

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}
