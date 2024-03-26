//
//  OnboardingView.swift
//  OnboardingExample
//
//  Created by SCOTT CROWDER on 3/26/24.
//

import SwiftUI

struct OnboardingView: View {
    
    let dismissOnboarding: () -> Void
    
    @State private var selectedView: Int = 1
    @State private var lastOnboardingScreen: Int = 2
    
    var body: some View {
        VStack {
            TabView(selection: $selectedView) {
                OnboardingScreen(
                    item: OnboardingItem(
                        systemImageName: "clock.badge.checkmark",
                        title: "Quick and Accurate",
                        subtitle: "This app is quick and accuracte with all the measurements."
                    )
                )
                .tag(1)
                
                OnboardingScreen(
                    item: OnboardingItem(
                        systemImageName: "dollarsign.circle",
                        title: "Make money",
                        subtitle: "With this app you can make money while you sleep."
                    )
                )
                .tag(2)
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            Button(selectedView == lastOnboardingScreen ? "Done" : "Next") {
                if selectedView == lastOnboardingScreen {
                    dismissOnboarding()
                } else {
                    selectedView += 1
                }
            }
            .buttonStyle(.borderedProminent)
            .padding(.vertical)
        }
    }
}

#Preview {
    OnboardingView(dismissOnboarding: {})
}
