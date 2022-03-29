//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 한경수 on 2022/03/29.
//

import SwiftUI

struct FavoriteButton: View {
  @Binding var isSet: Bool
  var body: some View {
    Button {
      isSet.toggle()
    } label: {
      Label("Toogle Favorite", systemImage: isSet ? "star.fill" : "star")
        .labelStyle(.iconOnly)
        .foregroundColor(isSet ? .yellow : .gray)
    }
  }
}

struct FavoriteButton_Previews: PreviewProvider {
  static var previews: some View {
    FavoriteButton(isSet: .constant(true))
  }
}
