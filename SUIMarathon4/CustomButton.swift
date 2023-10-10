//
//  CustomButton.swift
//  SUIMarathon4
//
//  Created by Alina Golubeva on 10/10/2023.
//

import SwiftUI

struct CustomButton: View {

    let duration: TimeInterval
    let scale: CGFloat
    
    @State var performAnimation = false
    
    var body: some View {
        Button {
            if !performAnimation {
                withAnimation (.interpolatingSpring(stiffness: 170, damping: 15)) {
                    performAnimation = true
                } completion: {
                    performAnimation = false
                }
            }
        } label: {
            GeometryReader { proxy in
                let width = proxy.size.width / 2
                let imageName = "play.fill"
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
                    Image (systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: performAnimation ? width : .zero)
                        .opacity(performAnimation ? 1 : .zero)
                    Image (systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: width)
                    Image (systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: performAnimation ? 0.5 : width)
                        .opacity(performAnimation ? .zero : 1)
                }
                .frame(maxHeight: .infinity, alignment: .center)
            }
        }
        .frame(maxWidth: 80, maxHeight: 80)
        .buttonStyle(CustomButtonStyle(duration: duration, scale: scale))
    }
}

#Preview {
    CustomButton(duration: 0.22, scale: 0.86)
}
