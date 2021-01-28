//
//  OnboardingView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/19/20.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    
    var mic: [Mic] = micsData
    
    //MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(mic[0...5]) { item in
                MicCardView(mic: item)
            }//: LOOP
            
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
        
    }
}
    
    //MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(mic: micsData)
    }
}
