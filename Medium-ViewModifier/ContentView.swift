//
//  ContentView.swift
//  Medium-ViewModifier
//
//  Created by Kristóf Kálai on 16/12/2023.
//

import SwiftUI

private struct SizeModifier: ViewModifier {
    private enum Constants {
        static let size = 100.0
    }

    func body(content: Content) -> some View {
        content
            .frame(width: Constants.size, height: Constants.size)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Color.red
                .modifier(SizeModifier())

            Color.green
                .modifier(SizeModifier())

            Color.blue
                .modifier(SizeModifier())
        }
    }
}

#Preview {
    ContentView()
}
