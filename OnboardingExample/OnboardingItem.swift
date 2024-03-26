//
//  OnboardingItem.swift
//  OnboardingExample
//
//  Created by SCOTT CROWDER on 3/26/24.
//

import Foundation

struct OnboardingItem: Identifiable {
    let id: UUID = UUID()
    let systemImageName: String
    let title: String
    let subtitle: String
    
    static let example: OnboardingItem = OnboardingItem(systemImageName: "clock.badge.checkmark", title: "Onboarding", subtitle: "Using this is actually a really huge time savings. You can do so many awesome things with this app, it's not even funny.")
}
