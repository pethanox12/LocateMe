//
//  LocateMeApp.swift
//  LocateMe
//
//  Created by Adrian Talbot on 03/11/2024.
//

import SwiftUI

@main
struct LocateMeApp: App {
    var bModel = BusinessModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(bModel)
        }
    }
}
