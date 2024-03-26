//
//  OnboardingVersion.swift
//  OnboardingExample
//
//  Created by SCOTT CROWDER on 3/26/24.
//

import SwiftData

@Model
final class OnboardingVersion {
    @Attribute(.unique) 
    let id: String = "OnboardingVersion"
    var versionNumber: String
    
    init(versionNumber: String) {
        self.versionNumber = versionNumber
    }
}
