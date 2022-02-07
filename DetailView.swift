//
//  DetailView.swift
//  FoodDelivery
//
//  Created by 吉郷景虎 on 2020/08/05.
//  Copyright © 2020 Kagetora Yoshigo. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @State var showOrderSheet = false
    
    var currentCategory: Categories
    
    var body: some View {
        List(filterData(by: currentCategory)) { food in
            DetailRow(showOrderSheet: self.$showOrderSheet, food: food)
        }
            .navigationBarTitle(Text(categoryString(for: currentCategory)), displayMode: .inline)
            .sheet(isPresented: $showOrderSheet) {
                OrderForm(showOrderSheet: self.$showOrderSheet)
            }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}
