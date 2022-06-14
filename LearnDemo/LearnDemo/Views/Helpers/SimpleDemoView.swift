//
//  SimpleDemoView.swift
//  LearnDemo
//
//  Created by admin on 2022/6/13.
//

import SwiftUI

class DateViewModel:ObservableObject {
    @Published var value:Int = 0
    
    init(){
        for i in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.value += 1
            }
        }
    }
    
}

struct SimpleDemoView: View {
    @State private var count:Int = 0;
    @StateObject var viewModel = DateViewModel()
    
    var body: some View {
        VStack {
            Text("number = \(viewModel.value)")
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
