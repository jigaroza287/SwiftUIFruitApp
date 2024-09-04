//
//  StartButton.swift
//  Fuits
//
//  Created by Jigar Oza on 27/08/24.
//

import SwiftUI

struct StartButton: View {
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    //MARK: - Body
    var body: some View {
        Button {
            isOnboarding = false
        }label: {
            HStack(spacing: 8) {
                Text("Start")
                    .foregroundStyle(.white)
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .foregroundStyle(.white)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }//: Button
    }
}

#Preview {
    StartButton()
        .previewLayout(.sizeThatFits)
}
