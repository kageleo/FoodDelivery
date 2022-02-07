//
//  Helper.swift
//  FoodDelivery
//
//  Created by 吉郷景虎 on 2020/08/05.
//  Copyright © 2020 Kagetora Yoshigo. All rights reserved.
//

import Foundation

enum Categories {
    case burger
    case pasta
    case pizza
    case dessert
}

func filterData(by category: Categories) -> [Food] {
    
    var filteredArray = [Food]()
    
    for food in foodData {
        if food.category == category {
            filteredArray.append(food)
        }
    }
    
    return filteredArray
}

func categoryString (for category: Categories) -> String {
    switch category {
    case .burger:
        return "Burger"
    case .pizza:
        return "Pizza"
    case .pasta:
        return "Pasta"
    case .dessert:
        return "Desserts"
    }
}
