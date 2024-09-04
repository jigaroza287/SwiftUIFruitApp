//
//  SettingsLabelView.swift
//  Fuits
//
//  Created by Jigar Oza on 04/09/24.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - Properties
    var labelText: String
    var labelImage: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
}
