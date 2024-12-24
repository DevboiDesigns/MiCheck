//
//  MicBestUseView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/20/20.
//

import SwiftUI

struct MicBestUseView: View {
    //MARK: - PROPERTIES
    var mic: Mic
    let bestUsed: [String] = ["" ,"", "", "", ""]
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Mic Check Recommendations \(Image(systemName: "mic"))") {
                ForEach(0..<bestUsed.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(bestUsed[item])
                        }
                        .foregroundColor(mic.gradientColors[0])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(mic.bestUsed[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//: BOX
    }
}


//MARK: - PREVIEW
//struct MicBestUseView_Previews: PreviewProvider {
//    static var previews: some View {
//        MicBestUseView(mic: micsData[0])
//            .preferredColorScheme(.dark)
//            .previewLayout(.fixed(width: 375, height: 480))
//            .padding()
//    }
//}
