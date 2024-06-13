//
//  ScrollPositionView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct ScrollPositionView: View {
    @State private var position = ScrollPosition(y: 0)
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<100) { i in
                    Text("Item \(i)")
                        .padding()
                        .id(i)
                }
            }
            .scrollPosition($position)

            HStack(spacing: 50) {
                Button("Top") {
                    position.scrollTo(edge: .top)
                }

                Button("Bottom") {
                    position.scrollTo(edge: .bottom)
                }

                Button("Random") {
                    position.scrollTo(id: Int.random(in: 0..<100))
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    ScrollPositionView()
}
