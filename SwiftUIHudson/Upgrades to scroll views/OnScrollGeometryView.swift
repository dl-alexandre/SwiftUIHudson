//
//  SwiftUIView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
///  Content offset needs to be set rarely, you don´t want high battery usage

import SwiftUI

struct OnScrollGeometryView: View {
    @State private var counter = 1
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<counter, id: \.self) { i in
                    Text("Row \(i)")
                }
            }

            Button("Add a row") {
                counter += 1
            }
        }
        .onScrollGeometryChange(for: Double.self) { geo in
            geo.contentSize.height
        } action: { oldValue, newValue in
            print("Height is now \(newValue)")
        }
    }
}

#Preview {
    OnScrollGeometryView()
}
