//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Hiroki Minami on 2023-07-18.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
    .commands {
      LandmarkCommands()
    }
    #if os(macOS)
    Settings {
      LandmarkSettings()
    }
    #endif
  }
}
