//
//  FormatterFunctions.swift
//  DigitalizeAware
//
//  Created by Benjamin Ott on 29.03.24.
//

import Foundation

func formatDateFromString(_ dateString: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    guard let date = dateFormatter.date(from: dateString) else {
        return "Invalid Date"
    }
    
    let displayFormatter = DateFormatter()
    displayFormatter.dateFormat = "dd.MM.yyyy"
    return displayFormatter.string(from: date)
}
