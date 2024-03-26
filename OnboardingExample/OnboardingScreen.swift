//
//  OnboardingScreen.swift
//  OnboardingExample
//
//  Created by SCOTT CROWDER on 3/26/24.
//

import SwiftUI

struct OnboardingScreen: View {
    
    let item: OnboardingItem
    
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: item.systemImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 200, maxHeight: 200)
                    .padding(.bottom)
                
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.title).bold()
                        .padding(.bottom)
                    
                    Text(item.subtitle)
                        .padding(.bottom)
                }
            }
            .padding()
        }
    }
}

#Preview {
    OnboardingScreen(item: .example)
}
