//
//  ContentView.swift
//  Example
//
//  Created by Lee McCormick on 3/8/24.
//

import SwiftUI
import SwiftPackageRemoteDemo

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, This is Example App !")
            }
            
            NavigationView {
                List {
                    NavigationLink(destination: GreetingOnSwiftPackageRemoteView()) {
                        Text("See Greeting View")
                    }
                    
                    NavigationLink(destination: SuccessView(message: "Show success in Example")){
                        Text("See Success View")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
