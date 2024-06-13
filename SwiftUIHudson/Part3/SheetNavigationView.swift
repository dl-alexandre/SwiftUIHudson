//
//  SheetNavigationView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

struct SheetNavigationView: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Show Detail View") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet, content: DetailView.init)
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail View")
            .font(.largeTitle)
            .presentationSizing(.form)
    }
}

#Preview {
    SheetNavigationView()
}
