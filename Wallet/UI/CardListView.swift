//
//  CardListView.swift
//  Wallet
//
//  Created by Sajad Abedi on 28.09.2022.
//

import SwiftUI

struct CardListView: View {
    @EnvironmentObject var wallet: Wallet
    
    var headerView: some View {
        HStack {
            Text("Your cards")
                .font(.title2)
            Spacer()
            Button("Add new") {}
                .font(.callout)
                .foregroundColor(.primaryPurple)
                .padding(.trailing)
        }
    }
    var body: some View {
        VStack {
            headerView
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing:10) {
                    ForEach(wallet.cards.indices, id: \.self) { index in
                        CardView(card: wallet.cards[index])
                            .onTapGesture {
                                wallet.cards.indices.forEach { index in
                                    wallet.cards[index].isSelected = false
                                }
                                wallet.cards[index].isSelected = true
                            }
                    }
                }
            }
            
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(Wallet())
    }
}
