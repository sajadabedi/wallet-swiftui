//
//  TransferMoneyView.swift
//  Wallet
//
//  Created by Sajad Abedi on 28.09.2022.
//

import SwiftUI

struct TransferMoneyView: View {
    let img: [String] = ["img1","img2","img3","img4"]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Transfer Money")
                .font(.title2)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(img, id:\.self) { index in
                        Image(index)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 65, height: 65)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
                    }
                    HStack {
                        Image(systemName: "plus")
                            .font(.title2)
                            .foregroundColor(.primaryPurple)
                            .padding(20)
                            .frame(width: 65, height: 65)
                            .background(Color.primaryPurple.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                }
            }
            
        }
        
    }
}

struct TransferMoneyView_Previews: PreviewProvider {
    static var previews: some View {
        TransferMoneyView()
    }
}
