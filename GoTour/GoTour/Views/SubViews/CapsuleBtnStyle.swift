//
//  CapsuleBtnStyle.swift
//  GoTour
//
//
//

import SwiftUI

struct CapsuleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.green)
            .foregroundColor(Color.green)
            .clipShape(Capsule())
    }
}
