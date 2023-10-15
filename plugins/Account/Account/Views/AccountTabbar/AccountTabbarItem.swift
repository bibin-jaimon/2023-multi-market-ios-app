//
//  AccountTabbarItem.swift
//  Account
//
//  Created by Jaimon, Bibin on 10/08/23.
//

import SwiftUI

enum AccountItems: String {
    case purchaseHistory    = "Purchase History"
    case address            = "Address"
    case paymentAndRefund   = "Payment & Refund"
    case plusMembership     = "Plus Membership"
}

struct AccountTabView: View {
    let items: [AccountItems]
    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                if item == .plusMembership {
                    HStack {
                        Text(item.rawValue)
                        Spacer()
                        Text("⭐️")
                    } .padding(.vertical, 20)
                } else {
                    Text(item.rawValue)
                }
            }
            .navigationBarTitle("My Account")
        }
    }
}

struct AccountTabView_Previews: PreviewProvider {
    static var previews: some View {
        AccountTabView(items: [])
    }
}

