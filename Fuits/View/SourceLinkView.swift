//
//  SourceLinkView.swift
//  Fuits
//
//  Created by Jigar Oza on 30/08/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
}
