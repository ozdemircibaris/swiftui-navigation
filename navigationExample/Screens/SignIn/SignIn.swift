//
//  SignIn.swift
//  navigationExample
//
//  Created by 10lift on 25.12.2022.
//

import SwiftUI

struct SignIn: View {
    var body: some View {
        Text("sign in abisi")

        NavigationLink(destination: SignUp()) {
            Text("haydi sign up ol bakim")
        }
        
        NavigationLink(destination: Home()) {
            Text("TAMAM GIRIS YAP BAKIM")
        }
        
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
