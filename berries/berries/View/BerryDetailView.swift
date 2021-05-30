//
//  BerryDetailView.swift
//  berries
//
//  Created by Albin Joseph on 30/05/21.
//

import SwiftUI

struct BerryDetailView: View {
    var berry:Berry
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    BerryHeaderView(berry: berry)
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                        Text(berry.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(berry.gradientColors[1])
                        Text(berry.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        BerryNutrientsView(berry: berry)
                        Text("Learn more about \(berry.title)".uppercased())
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(berry.gradientColors[1])
                        Text(berry.description)
                            .multilineTextAlignment(.leading)
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                    }
                    .padding(.horizontal, 20)
                    .frame( maxWidth: 640,alignment: .center)
                }
                .navigationBarTitle(berry.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct BerryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BerryDetailView(berry: berryData[1])
    }
}
