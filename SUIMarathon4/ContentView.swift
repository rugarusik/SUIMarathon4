//
//  ContentView.swift
//  SUIMarathon4
//
//  Created by Alina Golubeva on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack(spacing: 40) {
            VStack {
                Text("scale = 0")
                Text("duration = 1")
                CustomButton(duration: 1, scale: 0)
            }
            VStack {
                Text("scale = 0.86")
                Text("duration = 0.22")
                CustomButton(duration: 0.22, scale: 0.86)
            }
        }
    }
}

#Preview {
    ContentView()
}
