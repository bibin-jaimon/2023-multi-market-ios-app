//
//  HomeAppApp.swift
//  HomeApp
//
//  Created by Jaimon, Bibin on 08/08/23.
//

import SwiftUI
import Home
import PluginAPIs
import ECPlatform

@main
struct HomeAppApp: App {
    let homeAPI: HomeAPI = HomePluginAPI(
        container: Container(),
        configuration: SampleHomeConfiguration()
    )

    var body: some Scene {
        WindowGroup {
            homeAPI.makeHomeContentView()
        }
    }
}

struct SampleHomeConfiguration: HomePluginAPIConfiguration {
    var welcomeText: String {
        "HomeApp Target"
    }
}
