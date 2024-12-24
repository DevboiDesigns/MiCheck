//
//  MicDetailView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/20/20.
//

import SwiftUI

struct MicDetailView: View {
    //MARK: PROPETIES
    
    var mic: Mic
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //: HEADER
                    MicHeaderView(mic: mic)
                    VStack(alignment: .leading, spacing: 20) {
                        //: TITLE
                        Text(mic.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(mic.gradientColors[1])
                        //: HEADLINE
                        Text(mic.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //: BEST USED
                        MicBestUseView(mic: mic)
                        //: SUBHEADLINE
                        Text("Learn more about \(mic.title) Microphones".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(mic.gradientColors[1])
                        //: DESCRIPTION
                        Text(mic.description)
                            .multilineTextAlignment(.leading)
                        //: LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarTitle(mic.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
//struct MicDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MicDetailView(mic: micsData[0])
//    }
//}
