//
//  TimeLineViewGradientView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct TimeLineViewGradientView: View {
    var body: some View {
        TimelineView(.animation) { timeline in
            let x = (sin(timeline.date.timeIntervalSince1970) + 1) / 2

            MeshGradient(width: 3, height: 3, points: [
                [0, 0], [0.5, 0], [1, 0],
                [0, 0.5], [Float(x), 0.5], [1, 0.5],
                [0, 1], [0.5, 1], [1, 1]
            ], colors: [
                .red, .red, .red,
                .red, .orange, .red,
                .red, .red, .red
            ])
        }
    }
}

#Preview {
    TimeLineViewGradientView()
}
