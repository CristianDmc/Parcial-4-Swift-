//
//  Registrar.swift
//  Parcial4
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct Registrar: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @ObservedObject private  var authenticationViewModel: AuthenticationViewModel = AuthenticationViewModel()
    
    var body: some View {
        VStack {
            
            Text("Crear una cuenta de parcial")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            
            TextField("Email", text: $email).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Password", text: $password).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Spacer()
            
            Button("Registrar usuario") {
                authenticationViewModel.createNewUser(email: email, password: password)
            }
            .padding()

        }
        .background(Color.gray) 
                .edgesIgnoringSafeArea(.all) 
    }
}

struct Registrar_Previews: PreviewProvider {
    static var previews: some View {
        Registrar()
    }
}
