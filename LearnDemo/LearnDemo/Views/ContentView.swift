//
//  ContentView.swift
//  LearnDemo
//
//  Created by admin on 2022/6/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y:-100)
            Divider()
            HStack(spacing: 0.0){
                Text("this is")
                    .padding()
                    .foregroundColor(.blue)
                    .background(.brown)
                    .font(.subheadline)
                Text(" a test")
                    .padding()
                    .foregroundColor(.red)
                    .background(.green)
                    .font(.subheadline)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
