//
//  LearnDemoApp.swift
//  LearnDemo
//
//  Created by admin on 2022/6/12.
//

import SwiftUI

@main
struct LearnDemoApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
