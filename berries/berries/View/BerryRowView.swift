//
//  BerryRowView.swift
//  berries
//
//  Created by Albin Joseph on 30/05/21.
//

import SwiftUI

struct BerryRowView: View {
    var berry: Berry
    var body: some View {
        HStack {
            Image(berry.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(white: 0.0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: berry.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5, content: {
                Text(berry.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(berry.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            })
        }
    }
}

struct BerryRowView_Previews: PreviewProvider {
    static var previews: some View {
        BerryRowView(berry: berryData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
