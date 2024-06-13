//
//  EvniromentEntryView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

extension EnvironmentValues {
    @Entry var iconColor: Color = .red
}

struct EvniromentEntryView: View {
    var body: some View {
        HStack {
            BubblesView()
                .environment(\.iconColor, .blue)

            BubblesView()
                .environment(\.iconColor, .red)
        }
    }
}

struct BubblesView: View {
    @Environment(\.iconColor) var iconColor

    var body: some View {
        Image(systemName: "bubbles.and.sparkles.fill")
            .foregroundStyle(iconColor)
            .font(.largeTitle)
    }
}

#Preview {
    EvniromentEntryView()
}
