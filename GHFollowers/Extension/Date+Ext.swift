//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Talha Batuhan Irmalı on 19.07.2022.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
