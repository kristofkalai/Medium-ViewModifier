//
//  ContentView.swift
//  Medium-ViewModifier
//
//  Created by Kristóf Kálai on 16/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SomeComplexView(title: "Title", details: "Details")
            SomeComplexView(title: "Title", details: "Details") {
                AnyView($0.border(.blue, width: 3))
            }
        }
    }
}

struct SomeComplexView<ModifiedView: View>: View {
    let title: String
    let details: String
    let customization: (any View) -> ModifiedView

    var body: some View {
        HStack {
            customization(
                Text(title)
                    .font(.title)
                    .bold()
                    .padding()
            )

            Text(details)
                .font(.callout)
                .italic()
        }
    }
}

extension SomeComplexView where ModifiedView == AnyView {
    init(title: String, details: String) {
        self.title = title
        self.details = details
        self.customization = { AnyView($0) }
    }
}

#Preview {
    ContentView()
}
