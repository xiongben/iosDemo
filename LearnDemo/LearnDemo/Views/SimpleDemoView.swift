//
//  SimpleDemoView.swift
//  LearnDemo
//
//  Created by admin on 2022/6/13.
//

import SwiftUI

struct SimpleDemoView: View {
    @State private var count:Int = 0;
    
    var body: some View {
        VStack {
            Text("click times: \(count)")
            Button("click button"){
                count = count + 1
            }
        }
    }
}

struct SimpleDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleDemoView()
    }
}
