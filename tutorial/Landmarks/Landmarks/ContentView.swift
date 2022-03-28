//
//  ContentView.swift
//  Landmarks
//
//  Created by baro on 2022/03/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        MapView()
          .frame(height: 300.0)
          .ignoresSafeArea(.all, edges: .top)
        
        CircleImage()
          .offset(y: -130)
          .padding(.bottom, -130.0)
        
        VStack(alignment: .leading) {
          Text("Turtle Rock")
            .font(.title)
          HStack {
            Text("Joshua Tree National Park")
            Spacer()
            Text("California")
          }
          .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
          .foregroundColor(.secondary)
          
          Divider()
          
          Text("About Turtle Rock")
            .font(.title2)
          Text("Descriptive text goes here.")
        }
        .padding()
        
        Spacer()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
