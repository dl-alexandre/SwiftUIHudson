//
//  ColorBlendView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct ColorBlendView: View {
    @State private var firstColor = Color.red
    @State private var secondColor = Color.indigo
    @State private var blendAmount = 0.5
    
    var body: some View {
        VStack {
            ColorPicker("From", selection: $firstColor)
            ColorPicker("To", selection: $secondColor)
            Slider(value: $blendAmount)

            Rectangle()
                .fill(firstColor.mix(with: secondColor, by: blendAmount))
        }
        .padding()
    }
}

#Preview {
    ColorBlendView()
}
