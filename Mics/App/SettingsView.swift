//
//  SettingsView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/20/20.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Microphones", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("Mic_Check_logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("There are two different kinds of a microphone: Condenser (for studio recording and radio) and dynamic (for live performances and speaking).")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the app with the toggle switch. That way it starts onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.blue)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    ///NEW CODE FOR GIT **BOLD**
                    //MARK: - SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(name: "Developer", content: "Christopher Hicks")
                        SettingsRowView(name: "Designer", content: "Devboi Designs")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "GitHub", linkLabel: "Devboi Designs", linkDestination: "github.com/DevboiDesigns")
                        SettingsRowView(name: "Instagram", linkLabel: "infinity.christopher", linkDestination: "instagram.com/infinity.christopher/")
                        SettingsRowView(name: "Upwork", linkLabel: "Hire Me", linkDestination: "upwork.com/freelancers/devboidesigns")
                        
                    }
                }//: VSTack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//: SCROLL
        }//: NAVIAGTION
    }
}


//MARK: - PREVIEW
//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//            .preferredColorScheme(.dark)
//    }
//}
