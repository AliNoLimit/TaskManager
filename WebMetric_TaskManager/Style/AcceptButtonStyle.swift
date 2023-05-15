//
//  AcceptButtonStyle.swift
//  WebMetric_TaskManager
//
//  Created by AliNoLimit on 5/15/23.
//

import SwiftUI

struct AcceptButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: UIScreen.main.bounds.width*0.5, height: 50.0)
            .opacity(configuration.isPressed ? 0.5 : 1)
            .font(.title2)
            .foregroundColor(.white)
            .background(.pink)
            .cornerRadius(10.0)
            .shadow(radius: 5.0)
    }
}

struct AcceptButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: { print("Pressed") }) {
            Label("Press Me", systemImage: "star")
        }
        .buttonStyle(AcceptButtonStyle())
    }
}
