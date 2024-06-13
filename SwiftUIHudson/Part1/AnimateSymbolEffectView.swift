//
//  AnimateSymbolEffectView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct AnimateSymbolEffectView: View {
    @State private var animate = false

    var body: some View {
        Button {
            animate.toggle()
        } label: {
            Image(systemName: "arrow.clockwise.square")
                .symbolEffect(.rotate, value: animate)
                .font(.largeTitle)
        }
    }
}

#Preview {
    AnimateSymbolEffectView()
}
