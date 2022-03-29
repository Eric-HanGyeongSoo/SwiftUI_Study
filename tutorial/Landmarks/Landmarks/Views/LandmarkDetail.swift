//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 한경수 on 2022/03/29.
//

import SwiftUI

struct LandmarkDetail: View {
  var landmark: Landmark
  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height: 300.0)
        .ignoresSafeArea(.all, edges: .top)
      
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130.0)
      
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
        .foregroundColor(.secondary)
        
        Divider()
        
        Text("About \(landmark.name)")
          .font(.title2)
        Text(landmark.description)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail(landmark: landmarks[0])
  }
}
