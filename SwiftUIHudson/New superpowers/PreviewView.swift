//
//  PreviewView.swift
//  SwiftUIHudson
//
//  Created by Lena Mattea Stöxen on 13.06.24.
//

import SwiftUI

#Preview {
    @Previewable @State var username = "Anonymous"
    TextField("Enter your name", text: $username)
}
