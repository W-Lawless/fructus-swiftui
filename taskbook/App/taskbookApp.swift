//
//  taskbookApp.swift
//  taskbook
//
//  Created by W Lawless on 10/18/20.
//

import SwiftUI

@main
struct taskbookApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
