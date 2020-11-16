//
//  Login.swift
//  Coffe
//
//  Created by Ceren TAŞSIN on 16.11.2020.
//

import SwiftUI

struct Login: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Welcome back!")
                    .font(.title)
                    .foregroundColor(Color("textWelcomeBack"))
            }.padding(.leading, 25.0)
            .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.15, alignment: .leading)
            
          
            VStack{
                TextField("Email", text: $email)
                    .font(.footnote)
                    .foregroundColor(Color("textWelcomeBack"))
                    .padding(.horizontal, 30).padding(.top, 20)
                
                Divider()
                    .padding(.horizontal, 30)
                
                TextField("Password", text: $password)
                    .font(.footnote)
                    .foregroundColor(Color("textWelcomeBack"))
                    .padding(.horizontal, 30).padding(.top, 20)
                
                Divider()
                    .padding(.horizontal, 30)
            }
            
            VStack(alignment: .trailing, spacing: 5){
                Button(action: {
                    print("Forgot Password")
                }) {
                    Text("Forgot Password")
                        .bold()
                        .font(.footnote)
                        .foregroundColor(Color("textWelcomeBack"))
                }
            }.padding(.trailing)
            .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.03, alignment: .trailing)
            
            Spacer().frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.width * 0.09, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Button(action:{
                print("Log In")
            }) {
                Text("Log In")
                    .font(.system(size: 14))
                    .font(.body)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
            }.padding(.horizontal, 120.0)
            .padding(.vertical, 10.0)
            .background(Color("buttonBackground"))
            .cornerRadius(20)
            .foregroundColor(Color.white)
            
            HStack{
                Text("Don't have an account?")
                    .font(.system(size: 12))
                    .font(.footnote)
                    .foregroundColor(Color("textWelcomeBack"))
                
                Button(action:{
                    print("Register")
                }) {
                    Text("Register")
                        .font(.system(size: 12))
                        .bold()
                        .font(.footnote)
                        .foregroundColor(Color("textWelcomeBack"))
                }
            }
            .padding(.top, 3.0)
            
            Spacer().frame(height: UIScreen.main.bounds.height * 0.3)
            
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            Login()
                .previewDevice("iPhone 11 Pro")
        }
    }
}

