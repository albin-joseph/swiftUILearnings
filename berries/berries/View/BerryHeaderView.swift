//
//  BerryHeaderView.swift
//  berries
//
//  Created by Albin Joseph on 30/05/21.
//

import SwiftUI

struct BerryHeaderView: View {
    var berry:Berry
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: berry.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(berry.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(white: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame( height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.50)) {
                isAnimating = true
            }
        }
    }
}

struct BerryHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BerryHeaderView(berry: berryData[2])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
