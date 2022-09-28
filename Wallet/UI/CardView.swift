//
//  CardView.swift
//  Wallet
//
//  Created by Sajad Abedi on 28.09.2022.
//

import SwiftUI

struct CardView: View {
    let card: Card
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(card.imageName)
                    .resizable()
                    .frame(width: 32, height: 32)
            }.padding(.horizontal, 10)
                .padding(.top, 4)
            Spacer()
            Text("$\(card.balance)")
                .foregroundColor(card.textColor)
                .bold()
            Text("\(card.cardNumber)")
                .foregroundColor(card.textColor)
                .font(.callout)
        }
        .padding(.vertical, 10)
        .background(card.backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .frame(width: 110, height: 150)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(Wallet())
    }
}
