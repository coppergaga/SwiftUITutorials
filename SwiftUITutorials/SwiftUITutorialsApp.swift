//
//  SwiftUITutorialsApp.swift
//  SwiftUITutorials
//
//  Created by GaoXudong on 2021/3/16.
//

import SwiftUI

@main
struct SwiftUITutorialsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
