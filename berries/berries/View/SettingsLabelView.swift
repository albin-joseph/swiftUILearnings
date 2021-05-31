//
//  SettingsLabelView.swift
//  berries
//
//  Created by Albin Joseph on 31/05/21.
//

import SwiftUI

struct SettingsLabelView: View {
    var body: some View {
        HStack {
        Text("Berries".uppercased()).fontWeight(.bold)
        Spacer()
        Image(systemName: "info.circle")
    }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
