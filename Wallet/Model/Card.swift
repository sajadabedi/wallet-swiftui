//
//  Card.swift
//  Wallet
//
//  Created by Sajad Abedi on 28.09.2022.
//

import Foundation
import SwiftUI

struct Card {
    let income: Int
    let expenses: Int
    var balance: Int {
        income - expenses
    }
    let cardNumber: String
    let imageName: String
    
    var isSelected = false
    var backgroundColor: Color {
        isSelected ? .primaryPurple : .primaryYellow
    }
    var textColor: Color {
        isSelected ? .white : .black
    }
}
