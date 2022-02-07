//
//  Food.swift
//  FoodDelivery
//
//  Created by 吉郷景虎 on 2020/08/05.
//  Copyright © 2020 Kagetora Yoshigo. All rights reserved.
//

import Foundation
import SwiftUI

class Food: Identifiable {
    
    let title: String
    let price: Double
    let category: Categories
    let id: Int
    
    init(title: String, price: Double, category: Categories, id: Int) {
        self.title = title
        self.price = price
        self.category = category
        self.id = id
    }
    
}
