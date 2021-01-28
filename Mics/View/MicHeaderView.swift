//
//  MicHeaderView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/20/20.
//

import SwiftUI

struct MicHeaderView: View {
    //MARK: - PROPERTIES
    
    var mic: Mic
    
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: mic.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(mic.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

    //MARK: - PREVIEW

struct MicHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MicHeaderView(mic: micsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}

