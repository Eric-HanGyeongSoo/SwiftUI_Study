//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by baro on 2022/03/28.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}
