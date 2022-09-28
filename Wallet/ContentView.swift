//
//  ContentView.swift
//  Wallet
//
//  Created by Sajad Abedi on 28.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 50) {
                HeaderView()
                CardListView()
                BalanceView()
                TransferMoneyView()
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Wallet())
    }
}
