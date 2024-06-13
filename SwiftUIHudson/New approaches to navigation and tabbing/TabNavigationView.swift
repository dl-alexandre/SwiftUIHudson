//
//  TabNavigationView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct TabNavigationView: View {
    enum Section {
        case cats
        case dogs
    }

    @State private var selectedTab = Section.cats

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Cats", systemImage: "cat", value: .cats) {
                Button("Go to Dogs") {
                    selectedTab = .dogs
                }
            }

            Tab("Dogs", systemImage: "dog", value: .dogs) {
                Button("Go to Cats") {
                    selectedTab = .cats
                }
            }
        }
    }
}

#Preview {
    TabNavigationView()
}
