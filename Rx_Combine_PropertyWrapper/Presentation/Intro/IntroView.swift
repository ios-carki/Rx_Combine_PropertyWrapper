//
//  IntroView.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/05/29.
//

import SwiftUI

struct IntroView: View {
    
    weak var navigation: NavigationController?
    
    var body: some View {
        VStack(spacing: 14) {
            Button {
                print("Hello")
            } label: {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black, lineWidth: 2)
                    .foregroundColor(.white)
                    .overlay(
                        Text("Rx")
                            .foregroundColor(.black)
                    )
            }
            .frame(height: 50)
            
            Button {
                print("Hello")
            } label: {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black, lineWidth: 2)
                    .foregroundColor(.white)
                    .overlay(
                        Text("Combine")
                            .foregroundColor(.black)
                    )
            }
            .frame(height: 50)
            
            Button {
                print("Hello")
                navigation?.pushViewController(UIHostingController(rootView: SwiftUIView(navigation: navigation)), animated: true)
            } label: {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black, lineWidth: 2)
                    .foregroundColor(.white)
                    .overlay(
                        Text("Property Wrapper")
                            .foregroundColor(.black)
                    )
            }
            .frame(height: 50)
        }
        .padding(.horizontal, 16)
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
