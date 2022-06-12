//
//  CircleImage.swift
//  LearnDemo
//
//  Created by admin on 2022/6/12.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        VStack{
            image
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 4.0))
                .shadow(radius: 7.0)
            Text("臭老婆")
                .foregroundColor(.blue)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
