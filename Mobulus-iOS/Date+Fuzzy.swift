//
//  Date+Fuzzy.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/12/01.
//

import Foundation

extension Date {
    func toFuzzy() -> String {
        let now = Date()
        
        let cal = Calendar.current
        let component: Set<Calendar.Component> = [Calendar.Component.second, Calendar.Component.minute, Calendar.Component.hour, Calendar.Component.day, Calendar.Component.year]
        let components = cal.dateComponents(component, from: self, to: now)
        
        let diffSec: Int = components.second! + components.minute! * 60 + components.hour! * 3600 + components.day! * 86400 + components.year! * 31536000
        var result = String()
        
        if diffSec < 60 {
            result = "\(diffSec)s ago"
        } else if diffSec < 3600 {
            result = "\(diffSec / 60)m ago"
        } else if diffSec < 86400 {
            result = "\(diffSec/3600)h ago"
        } else if diffSec < 2764800 {
            result = "\(diffSec/86400)days ago"
        } else {
            let dateFormatter = DateFormatter()
            
            if components.year! > 0 {
                dateFormatter.dateFormat = "MMM ddd,y"
                result = dateFormatter.string(from: self)
            } else {
                dateFormatter.dateFormat = "MMMddd"
                result = dateFormatter.string(from: self)
            }
        }
        
        return result
    }
}
