//
//  OnboardingView.swift
//  Fuits
//
//  Created by Jigar Oza on 29/08/24.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruitsData) { fruit in
                FruitCard(fruit: fruit)
            }
        }//: TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
