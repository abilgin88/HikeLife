//
//  GradientButtonStyle.swift
//  HikeLife
//
//  Created by Abdullah Bilgin on 7/19/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditinal Statement with Nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When user pressed the Button
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                // B: When the Button is not pressed
            LinearGradient(
                colors: [
                    .customGrayLight,
                    .customGrayMedium
                ],
                startPoint: .top,
                endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
