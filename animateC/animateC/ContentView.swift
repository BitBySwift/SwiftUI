//
//  ContentView.swift
//  animateC
//
//  Created by abdul samad on 21/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Start animate"){
                isAnimating.toggle()
            }
            // Rectangle jo animate hoga
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: isAnimating ? 130 : 100)
                .animation(Animation.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: isAnimating ? 130 : 100)
                .animation(Animation.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: isAnimating ? 130 : 100)
                .animation(Animation.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: isAnimating ? 130 : 100)
                .animation(Animation.linear(duration: timing))
            
           
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
