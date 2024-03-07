//
//  File.swift
//  
//
//  Created by Lee McCormick on 3/7/24.
//

import Foundation

public class Validation {
    public init() { }
    
    public let validationGreeting  = "Hello, I am a validation demo."
    
    public func isValidEmail(_ email: String) -> Bool {
        // Regular expression pattern to match email format
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        // NSPredicate to evaluate the email format
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        return emailPredicate.evaluate(with: email)
    }
    
    public func isValidDateString(_ dateString: String, format: String = "yyyy-MM-dd") -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: dateString) != nil
    }
}
