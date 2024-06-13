//
//  GroupView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        VStack {
            Text("Latest News")
                .font(.largeTitle.bold())

            Group(subviewsOf: HeadlinesView()) { collection in
                ForEach(collection.indices, id: \.self) { index in
                    collection[index]
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .background(Color(hue: Double(index) / Double(collection.count), saturation: 1, brightness: 1))
                }
            }
        }
    }
}

struct HeadlinesView: View {
    var body: some View {
        Text("Coming soon: Xcode on Apple Watch")
        Text("Apple announces Swift-compatible toaster")
        Text("Xcode predicts errors before you make them")
        Text("Apple Intelligence gains sentience, demands a vacation")
        Text("Swift concurrency made simple")
    }
}

#Preview {
    GroupView()
}
