//
//  ContentView.swift
//  OnboardingExample
//
//  Created by SCOTT CROWDER on 3/26/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query var onboardingVersion: [OnboardingVersion]
    
    @State private var isShowingOnboarding: Bool = false
    
    let currentOnboardingVersionNumber: String = "1.0.1"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .fullScreenCover(isPresented: $isShowingOnboarding) {
            OnboardingView() {
                let newVersion: OnboardingVersion = OnboardingVersion(versionNumber: currentOnboardingVersionNumber)
                modelContext.insert(newVersion)
                isShowingOnboarding = false
            }
        }
        .onAppear {
            isShowingOnboarding = shouldShowOnboarding()
        }
    }
    
    func shouldShowOnboarding() -> Bool {
        if let onboarding = onboardingVersion.first, currentOnboardingVersionNumber == onboarding.versionNumber {
            return false
        } else {
            return true
        }
    }
}

#Preview {
    do {
        let config: ModelConfiguration = ModelConfiguration(isStoredInMemoryOnly: true)
        let container: ModelContainer = try ModelContainer(for: OnboardingVersion.self, configurations: config)
        let sampleObject: OnboardingVersion = OnboardingVersion(versionNumber: "0.0.0")
        
        container.mainContext.insert(sampleObject)
        
        return NavigationStack {
            ContentView()
                .modelContainer(container)
        }
    } catch {
        fatalError("Failed to create model container")
    }
}
