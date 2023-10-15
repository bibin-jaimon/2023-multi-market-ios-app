//
//  AccountPluginAPI.swift
//  Account
//
//  Created by Jaimon, Bibin on 10/08/23.
//

import ECPlatform
import PluginAPIs
import SwiftUI

public protocol AccountPluginConfiguration {
    var isEnabledPlusMembership: Bool { get }
}

public class AccountPluginAPI {
    private let container: Container
    private var configuration: AccountPluginConfiguration?

    public init(
        container: Container,
        configuration: AccountPluginConfiguration? = nil
    ) {
        self.container = container
        self.configuration = configuration
    }
}

extension AccountPluginAPI: AccountAPI {
    public func addPaymentCard() {
        print("🚀 Added Payment Card")
    }
    
    public func makeAccountTabBarItem() -> ECTabBarItem {
        var accountListItems: [AccountItems] = [
            .purchaseHistory,
            .address,
            .paymentAndRefund
        ]
        
        if let isEnabled = self.configuration?.isEnabledPlusMembership, isEnabled {
            accountListItems.append(.plusMembership)
        }
        
        let accountView = AccountTabView(items: accountListItems)
        return ECTabBarItem(
            view: AnyView(accountView
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }))
    }
}
