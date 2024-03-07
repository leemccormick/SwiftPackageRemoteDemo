//
//  SwiftUIView.swift
//  
//
//  Created by Lee McCormick on 3/7/24.
//

import SwiftUI

public struct GreetingOnSwiftPackageRemoteView: View {
    public init() {}

    public var body: some View {
        ZStack {
            Color.purple.opacity(0.2)
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                Text("It is a time to learn Swift Package.")
                
                HStack {
                    Image(systemName: "questionmark.diamond")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                    
                    Image(systemName: "building.columns.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                    
                    Image(systemName: "face.dashed")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.mint)
                }
                .padding()
            }
        }
        .border(.orange, width: 3)
        .cornerRadius(10)
    }
}

#Preview {
    GreetingOnSwiftPackageRemoteView()
}
