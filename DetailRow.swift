//
//  DetailRow.swift
//  FoodDelivery
//
//  Created by 吉郷景虎 on 2020/08/05.
//  Copyright © 2020 Kagetora Yoshigo. All rights reserved.
//

import SwiftUI

struct DetailRow: View {
    
    @Binding var showOrderSheet: Bool
    
    var food: Food
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(food.title)
                    .font(.headline)
                    .padding(.top, 10)
                Text("\(food.price, specifier: "%2.2f")$")
                    .font(.caption)
            }
            Spacer()
            Button(action: {self.showOrderSheet = true}) {
                Text("ORDER")
                    .foregroundColor(.white)
            }
                .frame(width: 80, height: 50)
                .background(Color.orange)
                .cornerRadius(10.0)
        }
            .padding(20)
        
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(showOrderSheet: .constant(false), food: foodData[0])
    }
}
