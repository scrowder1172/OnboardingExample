//
//  OnboardingExampleApp.swift
//  OnboardingExample
//
//  Created by SCOTT CROWDER on 3/26/24.
//

import SwiftData
import SwiftUI

@main
struct OnboardingExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: OnboardingVersion.self)
    }
}
