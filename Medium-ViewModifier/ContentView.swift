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
                .frame(width: 100, height: 100)

            Color.green
                .frame(width: 100, height: 100)

            Color.blue
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ContentView()
}
