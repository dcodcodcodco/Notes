//
//  Date + Extensions.swift
//  Notes
//
//  Created by Alex on 28.02.2022.
//

import Foundation

extension Date {
    func format() -> String {
        let formatter = DateFormatter()
        if Calendar.current.isDateInToday(self) {
            formatter.dateFormat = "h:mm a"
        } else {
            formatter.dateFormat = "dd/mm/yy"
        }
        return formatter.string(from: self)
    }
}
