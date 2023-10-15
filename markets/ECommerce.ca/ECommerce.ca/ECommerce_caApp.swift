//
//  ECommerce_caApp.swift
//  ECommerce.ca
//
//  Created by Jaimon, Bibin on 08/08/23.
//

import SwiftUI
import ECPlatform
import PluginAPIs

@main
struct ECommerce_caApp: App {
    private let container: Container = getRootContainer()

    var body: some Scene {
        let homeAPI: HomeAPI = container.get()
        
        WindowGroup {
            homeAPI.makeHomeContentView()
        }
    }
}
