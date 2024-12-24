//
//  MicsApp.swift
//  Mics
//
//  Created by Christopher Hicks on 12/19/20.
//

import SwiftUI

@main
struct MicsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
