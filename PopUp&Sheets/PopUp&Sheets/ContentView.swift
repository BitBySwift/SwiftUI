//
//  ContentView.swift
//  PopUp&Sheets
//
//  Created by abdul samad on 21/08/25.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet: Bool  = false
    
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showSheet.toggle()
            },
                    label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
                
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                // Logic conditional is won't work here!
                SecondScreen()
            })
        }
        
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack(alignment: .topLeading){
            
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            },
                    label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    
                
                
            })
            Text("@BitBySwift")
                .frame(maxWidth: .infinity, maxHeight: .infinity )
                .foregroundColor(.white)
                .font(.largeTitle)
                .shadow(radius: 10, x:5, y:4)
            
        }
        
        
    }
    
}


#Preview {
    ContentView()
    
    
    
}
