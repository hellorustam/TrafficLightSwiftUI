//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Rustam Samiev on 15.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redColor = Color(red: 1, green: 0.25, blue: 0.25, opacity: 0.5)
    @State private var orangeColor = Color(red: 1, green: 0.7, blue: 0.25, opacity: 0.5)
    @State private var greenColor = Color(red: 0.41, green: 0.94, blue: 0.16, opacity: 0.5)
    
    @State private var textButton = "START"
    
    private enum AlphaTrafficLigt {
        case red
        case orange
        case green
    }
    
   @State  private var statusTrafficLight = AlphaTrafficLigt.red
    
    var body: some View {
        VStack {
            Spacer()
            trafficLight
            Spacer()
            
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
        .padding()
    }
    
    private var trafficLight: some View {
        VStack(spacing: 24) {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(redColor)
                .overlay(Circle().stroke(Color.white, lineWidth: 8))
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(orangeColor)
                .overlay(Circle().stroke(Color.white, lineWidth: 8))
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(greenColor)
                .overlay(Circle().stroke(Color.white, lineWidth: 8))
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
            statusTrafficLight = AlphaTrafficLigt.orange
        case .orange:
            redColor = Color(red: 1, green: 0.25, blue: 0.25, opacity: 0.5)
            orangeColor = Color(red: 1, green: 0.7, blue: 0.25, opacity: 1)
            greenColor = Color(red: 0.41, green: 0.94, blue: 0.16, opacity: 0.5)
            statusTrafficLight = AlphaTrafficLigt.green
        case .green:
            redColor = Color(red: 1, green: 0.25, blue: 0.25, opacity: 0.5)
            orangeColor = Color(red: 1, green: 0.7, blue: 0.25, opacity: 0.5)
            greenColor = Color(red: 0.41, green: 0.94, blue: 0.16, opacity: 1)
            statusTrafficLight = AlphaTrafficLigt.red
        }
    }
    
    private func mainButton() {
        if textButton == "START" {
            textButton = "NEXT"
        }

        setStatusTrafficLight()
    }
}

#Preview {
    ContentView()
}
