//
//  StartButtonView.swift
//  berries
//
//  Created by Albin Joseph on 29/05/21.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    var body: some View {
        Button(action: {
            isOnBoarding = false
          print("Exit the onboarding")
        }, label: {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().stroke(Color.white, lineWidth: 1.5))
        })
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
