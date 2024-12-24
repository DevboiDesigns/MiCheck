//
//  StartButtonView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/19/20.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - BODY
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - PROPERTIES
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: BUTON
        .accentColor(Color.white)
    }
}

//MARK: - VIEW
//struct StartButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        StartButtonView()
//            .preferredColorScheme(.dark)
//            .previewLayout(.sizeThatFits)
//    }
//}
