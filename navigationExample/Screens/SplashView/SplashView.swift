//
//  SplashView.swift
//  navigationExample
//
//  Created by 10lift on 26.12.2022.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    @State var token: String?

    func getAccessToken() {
        let data = KeychainService.standard.read(service: "access-token", account: "lift-owfs")
        if let data = data {
            let token = String(data: data, encoding: .utf8)
            self.token = token
        }
    }

    var body: some View {
        ZStack {
            if self.isActive {
                if token != nil {
                    Home()
                } else {
                    SignIn()
                }
            } else {
                LottieView(lottieFile: "loading", loopMode: .loop)
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear {
            getAccessToken()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
        
}
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
