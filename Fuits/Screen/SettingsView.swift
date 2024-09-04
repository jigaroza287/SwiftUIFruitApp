//
//  SettingsView.swift
//  Fuits
//
//  Created by Jigar Oza on 03/09/24.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    
    @Environment(\.dismiss) var dismissSheet
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    VStack(spacing: 20) {
                        // MARK: - Section 1
                        
                        GroupBox(label:
                                    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        ) {
                            Divider().padding(.vertical, 4)
                            
                            HStack(alignment: .center, spacing: 10) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                Text("Fruits are an excellent source of essential vitamins and minerals, and they are high in fiber. Most of them are low in fat, sodium and calories. No cholesterol at all.")
                            }
                        }
                        
                        // MARK: - Section 2
                        
                        GroupBox(label:
                                    SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush")
                        ) {
                            Text("If you wish, you can restart the application by toggle the switch in this box. The way it starts the onboarding process and you will see the welcome screen again.")
                                .padding(.vertical)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding) {
                                Text("Restart".uppercased())
                            }
                            .padding()
                            .background(.tertiary)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        
                        // MARK: - Section 3
                        
                        GroupBox(label:
                                    SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        ) {
                            SettingsRowView(name: "Developer", content: "John Doe")
                            SettingsRowView(name: "Designer", content: "Mike Tyson")
                            SettingsRowView(name: "Compatibility", content: "iOS 17")
                            SettingsRowView(name: "SwiftUI", content: "5.0")
                            SettingsRowView(name: "App Version", content: "1.0.0")
                            SettingsRowView(name: "Website", linkLabel: "Github", linkDestination: "https://github.com/jigaroza287")
                            SettingsRowView(name: "Social", linkLabel: "Linked In", linkDestination: "https://www.linkedin.com/in/jigarkoza/")
                        }
                    }
                }// VStack
                .padding()
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismissSheet()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }//: Toolbar trailing button
            }//: ScrollView
        }//: NavigationStack
    }
}

#Preview {
    SettingsView()
}
