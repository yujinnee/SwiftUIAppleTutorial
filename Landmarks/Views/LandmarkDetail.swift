//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 이유진 on 2023/03/29.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                      
    
                    Spacer()
                    Text(landmark.state)
                       
                        
                }
                .font(.subheadline)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
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
