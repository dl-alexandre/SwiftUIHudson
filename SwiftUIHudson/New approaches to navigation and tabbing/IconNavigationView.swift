//
//  IconNavigationView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct IconNavigationView: View {
    let icons = [
        Icon(id: "figure.badminton", color: .red),
        Icon(id: "figure.fencing", color: .orange),
        Icon(id: "figure.gymnastics", color: .green),
        Icon(id: "figure.indoor.cycle", color: .blue),
        Icon(id: "figure.outdoor.cycle", color: .purple),
        Icon(id: "figure.rower", color: .indigo),
    ]

    @Namespace var animation
    @State private var selected: Icon?

    var body: some View {
        LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: 300))]) {
            ForEach(icons) { icon in
                Button {
                    selected = icon
                } label: {
                    Image(systemName: icon.id)
                }
                .foregroundStyle(icon.color.gradient)
                .font(.system(size: 100))
                .matchedTransitionSource(id: icon.id, in: animation)
            }
        }
        .sheet(item: $selected) { icon in
            DestinationView(icon: icon, animation: animation)
        }
    }
}

struct DestinationView: View {
    var icon: Icon
    var animation: Namespace.ID

    var body: some View {
        Image(systemName: icon.id)
            .font(.system(size: 300))
            .foregroundStyle(icon.color.gradient)
        #if os(iOS)
            .navigationTransition(.zoom(sourceID: icon.id, in: animation))
        #endif
    }
}

struct Icon: Identifiable {
    var id: String
    var color: Color
}

#Preview {
    IconNavigationView()
}
