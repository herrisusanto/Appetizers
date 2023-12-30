//
//  OrderView.swift
//  Appetizers
//
//  Created by loratech on 28/12/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.delete)
                    }
                    .listRowSeparatorTint(.brandPrimary)
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order button")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
                
            }
            .navigationTitle("💰Order")
            
        }
    }
     
}

#Preview {
    OrderView().environmentObject(Order())
}
