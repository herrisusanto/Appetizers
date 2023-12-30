//
//  Order.swift
//  Appetizers
//
//  Created by loratech on 30/12/23.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    
    func delete(at offSets: IndexSet){
        items.remove(atOffsets: offSets)
    }
}
