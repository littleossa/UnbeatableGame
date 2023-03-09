//
//  ContentView.swift
//  UnbeatableGame
//
//

import SwiftUI

struct ContentView: View {
    
    private let bestScore = 0
    
    var body: some View {
        VStack(spacing: 40) {
            
            Spacer()

            Text("絶対にクリア出来ない\nゲーム2")
                .multilineTextAlignment(.center)
                .font(.title)
                .bold()
            
            VStack {
                
                Text("今すぐ始める")
                    .multilineTextAlignment(.center)
                    .font(.caption)
                
                Button("スタート",
                       action: backToHomeScreenOfDevice)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .padding(.horizontal, 24)
                    .background {
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.tint)
                    }
            }
            
            Spacer()
            
            Text("BEST SCORE: \(bestScore)")
                .multilineTextAlignment(.center)
                .font(.caption)
        }
        .padding()
    }
    
    private func backToHomeScreenOfDevice() {
        
        UIControl().sendAction(#selector(URLSessionTask.suspend),
                               to: UIApplication.shared,
                               for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
