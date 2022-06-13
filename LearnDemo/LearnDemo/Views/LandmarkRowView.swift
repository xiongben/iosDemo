//
//  LandmarkRowView.swift
//  LearnDemo
//
//  Created by admin on 2022/6/12.
//

import SwiftUI

struct LandmarkRowView: View {
    
    var landmark:Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRowView(landmark: landmarks[0])
            LandmarkRowView(landmark: landmarks[1])
        }
            .previewLayout(.fixed(width: 300, height: 70))
    }
}