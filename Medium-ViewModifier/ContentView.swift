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
            Color.red
                .applySize()

            Color.green
                .applySize()

            Color.blue
                .applySize()
        }
    }
}

extension View {
    fileprivate func applySize() -> some View {
        frame(width: 100, height: 100)
    }
}

#Preview {
    ContentView()
}
