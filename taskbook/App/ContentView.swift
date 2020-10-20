//
//  ContentView.swift
//  taskbook
//
//  Created by W Lawless on 10/18/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings:Bool = false
    var fruits:[Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit:item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //: BTN
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
            //: LIST
        }//: NAV
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
