//
//  DateFormatter+Extension.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import Foundation

extension DateFormatter {
    static let defaultDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()
    
    static func date(withDefaultFormat string: String) -> Date {
        return DateFormatter.defaultDateFormat.date(from: string) ?? Date.now
    }
}
