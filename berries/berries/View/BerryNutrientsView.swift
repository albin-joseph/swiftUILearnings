//
//  BerryNutrientsView.swift
//  berries
//
//  Created by Albin Joseph on 30/05/21.
//

import SwiftUI

struct BerryNutrientsView: View {
    var berry: Berry
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100gm"){
                ForEach(0..<nutrients.count, id: \.self){ item in
                    Divider().padding(.vertical, 2)
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(berry.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(berry.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct BerryNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        BerryNutrientsView(berry: berryData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 440))
            .padding()
    }
}
