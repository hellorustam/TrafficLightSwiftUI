//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Rustam Samiev on 20.01.2024.
//

import SwiftUI

struct CircleTrafficView: View {
    var color: Color
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 8))
    }
}
