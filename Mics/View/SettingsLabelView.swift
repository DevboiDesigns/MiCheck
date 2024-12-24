//
//  SettingsLabelView.swift
//  Mics
//
//  Created by Christopher Hicks on 12/20/20.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - PREVIEW
//struct SettingsLabelView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsLabelView(labelText: "Microphones", labelImage: "info.circle")
//            .previewLayout(.sizeThatFits)
//            .padding()
//    }
//}
