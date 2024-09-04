//
//  FruitDetailView.swift
//  Fuits
//
//  Created by Jigar Oza on 30/08/24.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Properties
    var fruit: Fruit
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //: Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //: Title
                        Text(fruit.title)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //: Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //: Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        //: Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])

                        //: Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        //: Link
                        SourceLinkView()
                    }//: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VStack
            }//: ScrollView
            .ignoresSafeArea(edges: .top)
            .navigationTitle(fruit.title)
            .navigationBarTitleDisplayMode(.inline)
        }//: NavigationStack
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
