//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 한경수 on 2022/03/29.
//

import SwiftUI

struct LandmarkDetail: View {
  @EnvironmentObject var modelData: ModelData
  var landmark: Landmark
  
  var landmarkIndex: Int {
    modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
  }
  
  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height: 300.0)
        .ignoresSafeArea(.all, edges: .top)
      
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130.0)
      
      VStack(alignment: .leading) {
        
        HStack {
          Text(landmark.name)
            .font(.title)
          FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }
        
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
  static let modelData = ModelData()
  
  static var previews: some View {
    LandmarkDetail(landmark: modelData.landmarks[0])
      .environmentObject(modelData)
  }
}
