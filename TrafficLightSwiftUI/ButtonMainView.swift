//
//  ButtonMainView.swift
//  TrafficLightSwiftUI
//
//  Created by Rustam Samiev on 20.01.2024.
//

import SwiftUI

struct ButtonMainView: View {
    @State var textButton: String
    var setStatusTrafficLight: () -> Void
    
    var body: some View {
        Button(action: mainButton) {
            Text(textButton)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(.black)
                .cornerRadius(16)
                .font(.system(size: 24))
        }
    }
    
    private func mainButton() {
        if textButton == "START" {
            textButton = "NEXT"
        }

        setStatusTrafficLight()
    }
}
