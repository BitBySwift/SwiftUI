//
//  ContentView.swift
//  ElseIfConditionin_inUI
//
//  Created by abdul samad on 20/08/25.
//

import SwiftUI

struct ContentView: View {
    @State var showCicle: Bool = false
    var body: some View {
        VStack(spacing: 20){
            Button("Button Circle: \(showCicle.description)", action: {
                showCicle.toggle()
            })
            if showCicle == true {
                Circle()
             .frame(width: 100, height: 100)
            } else {
                Rectangle()
                    .frame(width: 100, height: 100)
                
            }
            Spacer()
            
        }
        
    }
}

#Preview {
    ContentView()
}
