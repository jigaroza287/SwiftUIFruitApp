//
//  SettingsRowView.swift
//  Fuits
//
//  Created by Jigar Oza on 04/09/24.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - Properties
    
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    //MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabelTemp = linkLabel, let linkDestinationTemp = linkDestination {
                    Link(linkLabelTemp, destination: URL(string: linkDestinationTemp)!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.blue)
                } else {
                    EmptyView()
                }
                
            }
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Develoepr", content: "John Doe")
        SettingsRowView(name: "Develoepr", linkLabel: "Test", linkDestination: "https://www.google.com")
    }
}
