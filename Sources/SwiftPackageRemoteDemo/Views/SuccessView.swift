//
//  SwiftUIView.swift
//  
//
//  Created by Lee McCormick on 3/7/24.
//

import SwiftUI

public struct SuccessView: View {
    private let message: String
    
    public init(message: String) {
        self.message = message
    }
    
    public var body: some View {
        VStack {
            HStack {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green).opacity(0.8)
                
                Text("Success !")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                
                Spacer()
                    .frame(maxWidth: .infinity)
            }
            
            Text("\(message)")
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(Color.red.opacity(0.1))
        .border(.red, width: 3)
        .cornerRadius(10)
    }
}
