//
//  Appetizer.swift
//  Appetizers
//
//  Created by loratech on 28/12/23.
//

import Foundation


struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request:[Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test Appetizer", description: "This is the description for my appetizer", price: 200, imageURL: "", calories: 5, protein: 2, carbs: 88)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
