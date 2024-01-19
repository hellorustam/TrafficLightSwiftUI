//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Rustam Samiev on 15.01.2024.
//

import SwiftUI

struct ContentView: View {
    private enum AlphaTrafficLight {
        case red
        case orange
        case green
    }
    
    @State  private var statusTrafficLight = AlphaTrafficLight.red
    @State private var redColor = Color(red: 1, green: 0.25, blue: 0.25, opacity: 0.5)
    @State private var orangeColor = Color(red: 1, green: 0.7, blue: 0.25, opacity: 0.5)
    @State private var greenColor = Color(red: 0.41, green: 0.94, blue: 0.16, opacity: 0.5)
    @State private var textButton = "START"
    
    var body: some View {
        VStack {
            Spacer()
            trafficLight
            Spacer()
            
            ButtonMainView(
                textButton: textButton,
                setStatusTrafficLight: setStatusTrafficLight
            )
        }
        .padding()
    }
    
    private var trafficLight: some View {
        VStack(spacing: 24) {
            CircleTrafficView(color: redColor)
            CircleTrafficView(color: orangeColor)
            CircleTrafficView(color: greenColor)
        }
        .padding(40)
        .background(Color(red: 0.902, green: 0.942, blue: 0.949))
        .cornerRadius(.infinity)
    }
    
    private func setStatusTrafficLight() {
        switch statusTrafficLight {
        case .red:
            redColor = Color(red: 1, green: 0.25, blue: 0.25, opacity: 1)
            orangeColor = Color(red: 1, green: 0.7, blue: 0.25, opacity: 0.5)
            greenColor = Color(red: 0.41, green: 0.94, blue: 0.16, opacity: 0.5)
            statusTrafficLight = AlphaTrafficLight.orange
        case .orange:
            redColor = Color(red: 1, green: 0.25, blue: 0.25, opacity: 0.5)
            orangeColor = Color(red: 1, green: 0.7, blue: 0.25, opacity: 1)
            greenColor = Color(red: 0.41, green: 0.94, blue: 0.16, opacity: 0.5)
            statusTrafficLight = AlphaTrafficLight.green
        case .green:
            redColor = Color(red: 1, green: 0.25, blue: 0.25, opacity: 0.5)
            orangeColor = Color(red: 1, green: 0.7, blue: 0.25, opacity: 0.5)
            greenColor = Color(red: 0.41, green: 0.94, blue: 0.16, opacity: 1)
            statusTrafficLight = AlphaTrafficLight.red
        }
    }
}

#Preview {
    ContentView()
}
