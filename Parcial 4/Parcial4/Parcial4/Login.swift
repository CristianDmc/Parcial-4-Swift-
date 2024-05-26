import SwiftUI

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
            
                Image("UTEC")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Spacer()
        
                Text("Parcial 4 ETPS4")
                    .font(.title)
                    .fontWeight(.bold)
                
                TextField("Email", text: $email).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                SecureField("Password", text: $password).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                    NavigationLink(destination: Registrar()){
                        Text("¿Desea registrarse?")
                    }
                
        
                
                
                Text("¿Olvidó su contraseña?")

                Button(action: {
          
                }) {
                    Text("                  Ingresar                     ")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                
                
                
                
            }
            .padding()
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

