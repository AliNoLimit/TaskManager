//
//  EmptyView.swift
//  WebMetric_TaskManager
//
//  Created by AliNoLimit on 5/15/23.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("emptyItem".localizedMessage.capitalizingFirstLetter())
                .font(.title)
                .fontWeight(.semibold)
            
            NavigationLink(
                "addTask".localized.capitalized, destination: AddView())
            .buttonStyle(AcceptButtonStyle())
        }
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
