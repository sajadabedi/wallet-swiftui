//
//  HeaderView.swift
//  Wallet
//
//  Created by Sajad Abedi on 28.09.2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Good Morning")
                    .font(.callout)
                    .foregroundColor(.gray)
                Text("Pat Flores")
                    .font(.title)
                
            }
            Spacer()
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
