//
//  LandmarkList.swift
//  LearnDemo
//
//  Created by admin on 2022/6/12.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            LandmarkRowView(landmark: landmarks[0])
            LandmarkRowView(landmark: landmarks[1])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
