//
//  ContentView.swift
//  Fuits
//
//  Created by Jigar Oza on 27/08/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    @State private var isSettingsVisible: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruitsData) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                    }
                    .padding(.trailing, 16)
                    .listRowInsets(EdgeInsets())
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isSettingsVisible = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }//: Button
                    .sheet(isPresented: $isSettingsVisible, content: {
                        SettingsView()
                    })
                }
            }//: Toolbar trailing button
        }// NavigationStack
    }
}

#Preview {
    ContentView()
}
