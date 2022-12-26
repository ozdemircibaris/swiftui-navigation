//
//  ContentView.swift
//  navigationExample
//
//  Created by 10lift on 25.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
               SplashView()
            }
        }
        
        .navigationTitle("")
            .toolbarBackground(Color.clear, for: .windowToolbar)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
