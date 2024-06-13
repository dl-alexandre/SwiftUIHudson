//
//  ContainerView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

extension ContainerValues {
    @Entry var icon: String = "photo"
}

struct ContainerView: View {
    var body: some View {
        VStack {
            Text("Latest News")
                .font(.largeTitle.bold())

            Group(subviewsOf: IconHeadlinesView()) { collection in
                ForEach(collection) { item in
                    HStack {
                        Image(systemName: item.containerValues.icon)
                        item
                    }
                }
            }
        }
    }
}

struct IconHeadlinesView: View {
    var body: some View {
        Text("Coming soon: Xcode on Apple Watch")
            .containerValue(\.icon, "applewatch")
        Text("Apple announces Swift-compatible toaster")
            .containerValue(\.icon, "swift")
        Text("Xcode predicts errors before you make them")
            .containerValue(\.icon, "exclamationmark.triangle")
        Text("Apple Intelligence gains sentience, demands a vacation")
            .containerValue(\.icon, "apple.logo")
        Text("Swift concurrency made simple")
            .containerValue(\.icon, "sparkles")
    }
}

#Preview {
    ContainerView()
}
