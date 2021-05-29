//
//  OnBoardingView.swift
//  berries
//
//  Created by Albin Joseph on 29/05/21.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5){ item in
                BerryCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
      
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
