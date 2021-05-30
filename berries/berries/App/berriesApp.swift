//
//  berriesApp.swift
//  berries
//
//  Created by Albin Joseph on 29/05/21.
//

import SwiftUI

@main
struct berriesApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
