//
//  Calendar+Extension.swift
//  Countdown
//
//  Created by Jill Allan on 06/10/2023.
//

import Foundation

extension Calendar {
    func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        
        return numberOfDays.day!
    }
    
    func numberOfSecondsBetween(_ from: Date, and to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.second], from: fromDate, to: toDate)
        
        return numberOfDays.second!
    }
}
