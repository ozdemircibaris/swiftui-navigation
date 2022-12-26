//
//  ContentView.swift
//  navigationExample
//
//  Created by 10lift on 25.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var token: String?

    func getAccessToken() {
        let data = KeychainService.standard.read(service: "access-token", account: "lift-os")
        if let data = data {
            let token = String(data: data, encoding: .utf8)
            self.token = token
        }
    }

    var body: some View {
        VStack {
            NavigationStack {
                if token != nil {
                    Home()
                } else {
                    SignIn()
                }
            }
        }
        .onAppear {
            getAccessToken()
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
