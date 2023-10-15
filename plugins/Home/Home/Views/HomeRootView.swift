//
//  HomeRootView.swift
//  Home
//
//  Created by Jaimon, Bibin on 08/08/23.
//

import SwiftUI
import ECPlatform
import PluginAPIs

public struct HomeRootView: View {
    var tabbarItems: [ECTabBarItem] = []
    let configuration: HomePluginAPIConfiguration?
    let container: Container
    
    public init(
        container: Container,
        tabbarItems: [ECTabBarItem],
        configuration: HomePluginAPIConfiguration? = nil)
    {
        self.container = container
        self.tabbarItems = tabbarItems
        self.configuration = configuration
    }
    
    public var body: some View {
        TabView {
            HomeTabView(welcomeText: configuration?.welcomeText, delegate: self)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            ForEach(tabbarItems, id: \.id) { item in
                item.view
            }
        }
    }
}

extension HomeRootView: HomeTabViewDelegate {
    func didTapAddCards() {
        if let accountAPI = container.getIfRegistered(AccountAPI.self) {
            accountAPI.addPaymentCard()
        }
    }
}
