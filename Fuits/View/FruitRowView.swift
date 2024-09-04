//
//  FruitRowView.swift
//  Fuits
//
//  Created by Jigar Oza on 30/08/24.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - Properties
    var fruit: Fruit
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center) {
            //: Image
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            //: Details
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }// Details
            .padding(.top, 4)
            .padding(.trailing, 8)
        }// HStack - FruitRowView
        .padding()
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}
