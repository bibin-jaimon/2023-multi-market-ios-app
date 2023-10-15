//
//  HomeTabView.swift
//  Home
//
//  Created by Jaimon, Bibin on 21/08/23.
//

import SwiftUI

protocol HomeTabViewDelegate {
    func didTapAddCards()
}
struct HomeTabView: View {
    let welcomeText: String?
    let delegate: HomeTabViewDelegate
    
    var body: some View {
        VStack {
            Text(welcomeText ?? "Hey there")
                .font(.largeTitle)
            
            Button("Add Payment Cards") {
                delegate.didTapAddCards()
            }
            .padding()
        }
        
        
    }
}
