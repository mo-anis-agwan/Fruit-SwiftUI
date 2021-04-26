//
//  FruityApp.swift
//  Fruity
//
//  Created by Anis on 26/04/21.
//

import SwiftUI

@main
struct FruityApp: App {
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
