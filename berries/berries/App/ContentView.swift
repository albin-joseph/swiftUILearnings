//
//  ContentView.swift
//  berries
//
//  Created by Albin Joseph on 29/05/21.
//

import SwiftUI

struct ContentView: View {
    
    var berries: [Berry] = berryData
    @State private var isShowSettings: Bool = false
    var body: some View {
        NavigationView{
            List{
                ForEach(berries){ item in
                    NavigationLink(
                        destination: BerryDetailView(berry: item)){
                        BerryRowView(berry: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Berries")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowSettings = true
                                    }){Image(
                                        systemName: "slider.horizontal.3"
                                    )}
                .sheet(isPresented: $isShowSettings, content: {
                    SettingsView()
                })
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
