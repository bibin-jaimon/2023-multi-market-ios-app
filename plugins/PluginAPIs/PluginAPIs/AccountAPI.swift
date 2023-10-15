//
//  AccountAPI.swift
//  PluginAPIs
//
//  Created by Jaimon, Bibin on 10/08/23.
//

import SwiftUI
import ECPlatform

/**
 API provided by Account
 */
public protocol AccountAPI {
    func makeAccountTabBarItem() -> ECTabBarItem
    func addPaymentCard()
}
