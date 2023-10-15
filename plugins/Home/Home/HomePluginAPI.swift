//
//  HomePluginAPI.swift
//  Home
//
//  Created by Jaimon, Bibin on 08/08/23.
//

import Foundation
import PluginAPIs
import SwiftUI
import ECPlatform

public protocol HomePluginAPIConfiguration {
    var welcomeText: String { get }
}

public class HomePluginAPI {
    let configuation: HomePluginAPIConfiguration
    let container: Container

    public init(
        container: Container,
        configuration: HomePluginAPIConfiguration
    ) {
        self.container = container
        self.configuation = configuration
    }
}

extension HomePluginAPI: HomeAPI {
    public func makeHomeContentView() -> AnyView {
        var tabbars = [ECTabBarItem]()
        
        if let accountAPI = container.getIfRegistered(AccountAPI.self) {
            tabbars.append(accountAPI.makeAccountTabBarItem())
        }
        
        return AnyView(HomeRootView(
            container: container,
            tabbarItems: tabbars,
            configuration: configuation
        ))
    }
}
