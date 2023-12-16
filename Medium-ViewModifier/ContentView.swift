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
            SomeComplexView(title: "Title", details: "Details", hasBorder: true)
            SomeComplexView(title: "Title", details: "Details", hasBorder: true, hasThickBorder: true)
        }
    }
}

struct SomeComplexView: View {
    private let title: String
    private let details: String
    private let hasBorder: Bool
    private let hasThickBorder: Bool

    init(title: String, details: String, hasBorder: Bool = false, hasThickBorder: Bool = false) {
        self.title = title
        self.details = details
        self.hasBorder = hasBorder
        self.hasThickBorder = hasThickBorder
    }

    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .bold()
                .padding()
                .border(hasBorder ? .blue : .clear, // or: hasBorder || hasThickBorder ? .blue : .clear
                        width: hasThickBorder ? 5 : (hasBorder ? 3 : 0))

            Text(details)
                .font(.callout)
                .italic()
        }
    }
}

#Preview {
    ContentView()
}
