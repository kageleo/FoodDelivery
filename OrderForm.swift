//
//  OrderForm.swift
//  FoodDelivery
//
//  Created by 吉郷景虎 on 2020/08/06.
//  Copyright © 2020 Kagetora Yoshigo. All rights reserved.
//

import SwiftUI

struct OrderForm: View {
    
    @State var specialRequests = false
    @State var specialRequestContent = ""
    @State var orderAmount = 1
    
    @State var firstName = ""
    @State var lastName = ""
    @State var streetAddress = ""
    @State var city = ""
    @State var zip = ""
    
    @State var userFeedback = 0.0
    
    @Binding var showOrderSheet: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $specialRequests) {
                        Text("Any special requests ?")
                    }
                    if specialRequests {
                        TextField("Enter your wishes", text: $specialRequestContent)
                    }
                    Stepper(value: $orderAmount, in: 1...10, label: {Text("Number of items: \(orderAmount)")})
                }
                Section {
                    TextField("First name", text: $firstName)
                    TextField("Last name", text: $lastName)
                    TextField("Street address", text: $streetAddress)
                    TextField("City", text: $city)
                    TextField("Zip", text: $zip)
                }
                Section {
                    VStack {
                        Text("How happy were you with the user experience ?")
                            .padding(.top, 10)
                        HStack {
                            Image(systemName: "hand.thumbsdown")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Slider(value: $userFeedback, in: 0.0...10.0)
                            Image(systemName: "hand.thumbsup")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                    }
                }
                Section {
                    Button(action: {print("Placed")}) {
                        Text("Place order")
                    }
                }

            }
                .navigationBarTitle(Text("Welcome"))
                .navigationBarItems(leading:
                    Button(action: {self.showOrderSheet = false}) {
                        Text("Cancel")
                    }
                )
        }
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm(showOrderSheet: .constant(true))
    }
}
