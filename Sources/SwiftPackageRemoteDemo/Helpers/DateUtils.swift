//
//  File.swift
//  
//
//  Created by Lee McCormick on 3/7/24.
//

import Foundation

public class DateUtils {
    public static let shared: DateUtils = .init()
    
    public init() {}
    
    public static func formatDate(_ date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}
