//
//  SettingsRowView.swift
//  taskbook
//
//  Created by W Lawless on 10/19/20.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    
    
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkUrl:String? = nil
    
    //MARK:  - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLabel != nil && linkUrl != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkUrl!)")! )
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}


//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Lawless Sharpe")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkUrl: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
