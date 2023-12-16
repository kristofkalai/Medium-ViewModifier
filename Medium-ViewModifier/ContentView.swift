//
//  ContentView.swift
//  Medium-ViewModifier
//
//  Created by Kristóf Kálai on 16/12/2023.
//

import SwiftUI

struct ContentView: View {
    private enum Constants {
        static let size = 100.0
    }

    var body: some View {
        VStack {
            Color.red
                .frame(width: Constants.size, height: Constants.size)

            Color.green
                .frame(width: Constants.size, height: Constants.size)

            Color.blue
                .frame(width: Constants.size, height: Constants.size)
        }
    }
}

#Preview {
    ContentView()
}
