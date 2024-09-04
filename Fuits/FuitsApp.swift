//
//  FuitsApp.swift
//  Fuits
//
//  Created by Jigar Oza on 27/08/24.
//

import SwiftUI

@main
struct FuitsApp: App {
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
