//
//  SwiftUIView.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/05/29.
//

import SwiftUI

struct SwiftUIView: View {
    
    weak var navigation: NavigationController?
    
    
    @State var nowNumber: Int = 0
    @State var clicked: Bool = false
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            justTest()
                .overlay(
                    Text("SwiftUI")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                )
            
            RoundedRectangle(cornerRadius: 12)
                .stroke((clicked == true) ? Color.red : Color.black, lineWidth: 2)
                .overlay(
                    Text(String(nowNumber))
                        .foregroundColor(.black)
                        .font(.largeTitle)
                )
                .frame(height: 100)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 20) {
                Button {
                    nowNumber -= 1
                } label: {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(.statusAlert)
                        .overlay(
                            Text("감소")
                                .foregroundColor(.white)
                        )
                }
                .frame(height: 50)
                
                Button {
                    nowNumber += 1
                } label: {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(.statusFine)
                        .overlay(
                            Text("증가")
                                .foregroundColor(.white)
                        )
                }
                .frame(height: 50)
            }
        }
        .padding(.horizontal, 16)
    }
    
}

struct justTest: View {
    @State private var progress: CGFloat = 0
    let gradient1 = Gradient(colors: [.purple, .green])
    let gradient2 = Gradient(colors: [.blue, .purple])
    
    var body: some View {
        Rectangle()
            .animatableGradient(fromGradient: gradient1, toGradient: gradient2, progress: progress)
            //.ignoresSafeArea()
            .frame(height: 100)
            .onAppear {
                withAnimation(.linear(duration: 5.0).repeatForever(autoreverses: true)) {
                    self.progress = 1.0
                }
            }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
