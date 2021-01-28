//
//  ContentView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var mic: [Mic] = micsData
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(mic) { item in
                    NavigationLink(
                        destination: MicDetailView(mic: item)) {
                        MicRowView(mic: item)
                            .padding(.vertical, 10)
                    }
                    
                    
                }
            }
            .navigationTitle("Microphones")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }//: BUTTON
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        )
    }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
  }
    
}
    //MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(mic: micsData)
    }
}
