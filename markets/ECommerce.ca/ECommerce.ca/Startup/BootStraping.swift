//
//  BootStraping.swift
//  ECommerce.ca
//
//  Created by Jaimon, Bibin on 08/08/23.
//

import PluginAPIs
import ECPlatform

/// Plugins
import Home
import Account

func getRootContainer() -> Container {
    let container: Container = Container()

    container.registerChild(
        HomeAPI.self,
        HomePluginAPI(container: container, configuration: HomeConfiguration())
    )
    
    container.registerChild(
        AccountAPI.self,
        AccountPluginAPI(container: container, configuration: AccountConfiguration())
    )

    return container
}
