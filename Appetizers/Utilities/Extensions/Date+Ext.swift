//
//  Date+Ext.swift
//  Appetizers
//
//  Created by loratech on 31/12/23.
//

import Foundation


extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
