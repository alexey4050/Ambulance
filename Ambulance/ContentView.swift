//
//  ContentView.swift
//  Ambulance
//
//  Created by testing on 01.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var offset: CGFloat = -10
    @State var rotated = false
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.gray)
                .frame(width: 200, height: 200)
                .blur(radius: 10)
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(rotated ? 90 : 0))
                .offset(x: -50, y: -50)
                .animation(.spring(response: 0.5, dampingFraction: 0.3, blendDuration: 1), value: rotated)
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(rotated ? 90 : 0))
                .offset(x: 50, y: 50)
                .animation(.spring(response: 0.8, dampingFraction: 0.3, blendDuration: 1), value: rotated)
                .overlay(
                    GeometryReader { geometry in
                        Ambulance()
                            .fill(.white)
                            .stroke(.black, lineWidth: 1)
                            .scaleEffect(2)
                            .frame(width: 100, height: 100, alignment: .center)
                            .offset(x: 0, y: -70 * geometry.size.height / 150)
                            .overlay(
                                Rectangle()
                                    .fill(.blue)
                                    .frame(width: 40 * geometry.size.width / 200, height: 10 * geometry.size.height / 150)
                                    .offset(x: -60 * geometry.size.width / 200, y: 8 * geometry.size.height / 150))
                        
                            .overlay(
                                Circle()
                                    .fill(.red)
                                    .frame(width: 10 * geometry.size.width / 200, height: 20 * geometry.size.height / 150)
                                    .offset(x: 0, y: -15 * geometry.size.height / 150))
                        
                            .overlay(
                                Text("SOS")
                                    .font(.system(size: 15))
                                    .foregroundStyle(.white)
                                    .animation(.linear(duration: 0.5))
                                    .offset(x: CGFloat(offset) * geometry.size.width / 200, y: -30 * geometry.size.height / 150))
                        
                            .onReceive(timer) { _ in
                                offset = -offset
                            }
                    }
                )
        }
        .overlay(
            Button(action: {
                rotated.toggle()
            }, label: {
                Text("Rotate")
                    .padding()
                    .tint(.white)
                    .background(.mint)
                    .cornerRadius(10)
            })
            .offset(y: 100))
    }
}


#Preview {
    ContentView()
}
