//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by GaoXudong on 2021/3/16.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
//        TabView(selection: $selection,
//                content:  {
//                    CategoryHome().tabItem { Label("Featured", systemImage: "star") }.tag(Tab.featured)
//                    LandMarkList().tabItem { Label("List", systemImage: "list.bullet") }.tag(Tab.list)
//                })
        PageView(pages: ModelData().features.map {
            FeatureCard(landmark: $0)
        }).aspectRatio(3 / 2, contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
