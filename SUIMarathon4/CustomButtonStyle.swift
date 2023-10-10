//
//  CustomButtonStyle.swift
//  SUIMarathon4
//
//  Created by Alina Golubeva on 10/10/2023.
//

import SwiftUI

struct CustomButtonStyle: PrimitiveButtonStyle {
    
    @State private var isPressed = false
    
    let duration: TimeInterval
    let scale: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(isPressed ? .black.opacity(0.2) : .clear)
            .clipShape(Capsule())
            .scaleEffect(isPressed ? scale : 1)
            .animation(.easeOut(duration: duration), value: isPressed)
            .onTapGesture {
                configuration.trigger()
                withAnimation(.interactiveSpring(duration: duration)) {
                    isPressed = true
                } completion: {
                    isPressed = false
                }
            }
    }
}
