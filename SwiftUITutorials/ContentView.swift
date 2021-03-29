//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by GaoXudong on 2021/3/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HikeView(hike: ModelData().hikes[0])
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
