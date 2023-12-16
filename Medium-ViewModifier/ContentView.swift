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
            SomeComplexView(title: "Title", details: "Details", titleModifier: .init())
            SomeComplexView(title: "Title", details: "Details", titleModifier: .init(color: .red, width: 5))
        }
    }
}

struct SomeComplexView: View {
    private let title: String
    private let details: String
    private let titleModifier: TitleViewModifier

    init(title: String, details: String, titleModifier: TitleViewModifier = .empty) {
        self.title = title
        self.details = details
        self.titleModifier = titleModifier
    }

    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .bold()
                .padding()
                .modifier(titleModifier)

            Text(details)
                .font(.callout)
                .italic()
        }
    }
}

struct TitleViewModifier: ViewModifier {
    private let color: Color
    private let width: CGFloat

    static var empty: Self {
        .init(color: .clear, width: .zero)
    }

    init(color: Color = .blue, width: CGFloat = 3) {
        self.color = color
        self.width = width
    }

    func body(content: Content) -> some View {
        content
            .border(color, width: width)
    }
}

#Preview {
    ContentView()
}
