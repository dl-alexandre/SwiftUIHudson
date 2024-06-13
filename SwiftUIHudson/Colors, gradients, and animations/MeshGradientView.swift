//
//  MeshGradient.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct MeshGradientView: View {
    var body: some View {
        MeshGradient(width: 2, height: 2, points: [
            [0, 0], [1, 0], [0, 1], [1, 1]
        ], colors: [.red, .green, .blue, .yellow])
    }
}

#Preview {
    MeshGradientView()
}





