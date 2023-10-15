//
//  ECommerceApp.swift
//  ECommerce
//
//  Created by Jaimon, Bibin on 08/08/23.
//

import SwiftUI
import ECPlatform
import PluginAPIs

@main
struct ECommerceApp: App {
    private let container: Container = getRootContainer()
    
    var body: some Scene {
        let homeAPI: any HomeAPI = container.get()
        WindowGroup {
            VStack {
                homeAPI.makeHomeContentView()
            }
        }
    }
}
