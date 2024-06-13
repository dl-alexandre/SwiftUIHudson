//
//  ScrollPhaseView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct ScrollPhaseView: View {
    @State private var backgroundColor = Color.red

    var body: some View {
        ScrollView {
            backgroundColor
                .frame(height: 2000)
        }
        .onScrollPhaseChange { oldPhase, newPhase in
            if newPhase == .interacting {
                backgroundColor = .green
            } else {
                backgroundColor = .red
            }
        }
    }
}

#Preview {
    ScrollPhaseView()
}
