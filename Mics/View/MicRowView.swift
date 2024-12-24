//
//  MicRowView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/20/20.
//

import SwiftUI

struct MicRowView: View {
    //MARK: - PROPPERTIES
    var mic: Mic
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(mic.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: mic.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(mic.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(mic.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }//: HSTACK
    }
}

//MARK: - PREVIEW
//struct MicRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        MicRowView(mic: micsData[0])
//            .previewLayout(.sizeThatFits)
//            .padding()
//    }
//}
