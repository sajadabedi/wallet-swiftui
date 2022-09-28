//
//  BalanceView.swift
//  Wallet
//
//  Created by Sajad Abedi on 28.09.2022.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Balance")
                    .font(.title2)
                Spacer()
                Text("70%")
                    .font(.title2)
            }
            ZStack(alignment:.leading){
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 20)
                RoundedRectangle(cornerRadius: 6, style: .continuous)
                    .fill(Color.primaryPurple)
                    .frame(width:250,height: 20)
                    
            }
            HStack{
                HStack {
                    Image(systemName: "arrow.up")
                        .font(.title2)
                        .padding(20)
                        .frame(width: 50, height: 50)
                        .background(Color.primaryPurple.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    VStack(alignment: .leading){
                        Text("Income")
                            .font(.callout)
                            .foregroundColor(.gray)
                        Text("$2,240")
                            .font(.title2)
                            .fontWeight(.medium)
                    }
                }
                Spacer()
                HStack {
                    Image(systemName: "arrow.down")
                        .font(.title2)
                        .padding(20)
                        .frame(width: 50, height: 50)
                        .background(Color.primaryYellow.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    VStack(alignment: .leading){
                        Text("Income")
                            .font(.callout)
                            .foregroundColor(.gray)
                        Text("$2,240")
                            .font(.title2)
                            .fontWeight(.medium)
                    }
                }
            }
            .padding(.top)
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
    }
}
