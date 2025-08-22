import SwiftUI

struct TransitionView: View {
    @State private var showRectangle = false
    
    var body: some View {
        ZStack {
            VStack {
                Button("BUTTON") {
                    withAnimation {
                        showRectangle.toggle()
                    }
                }
                Spacer()
            }
            
            if showRectangle {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom)) // ✅ transition use kiya
            }
        }
    }
}

#Preview {
    TransitionView()
}
