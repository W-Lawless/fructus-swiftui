//
//  SettingsLabelView.swift
//  taskbook
//
//  Created by W Lawless on 10/19/20.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - PROPERTIES
    
    var titleText:String
    var imageRef:String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(titleText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: imageRef)
        }
    }
}

//MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(titleText: "Fructus", imageRef: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
