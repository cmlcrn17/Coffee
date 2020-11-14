//
//  ContentView.swift
//  Coffe
//
//  Created by Ceren TAŞSIN on 14.11.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack{
                ScrollView {
                    GeometryReader { geometry in
                        ImageCarouselView(numberOfImages: 3) {
                            Image("coffee1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .clipped()
                            Image("coffee2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .clipped()
                            Image("coffee3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .clipped()
                        }
                    }.frame(height: 300, alignment: .center)
                }.edgesIgnoringSafeArea(.all)
                
                Text("Get the best coffee in town!")
                    .font(.title)
                    .foregroundColor(Color("textColor"))
                    .multilineTextAlignment(.center)
                
                Spacer().frame(height: UIScreen.main.bounds.height * 0.08)
                
                HStack{
                    
                    VStack(alignment: .leading){
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Register")
                                .font(.system(size: 14))
                                .font(.body)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }.padding(.horizontal, 30.0)
                        .padding(.vertical, 10.0)
                        .background(Color("buttonBackground"))
                        .cornerRadius(20)
                        .foregroundColor(Color.white)
                    }
                    
                    Spacer().frame(width: UIScreen.main.bounds.width * 0.05)
                    
                    VStack(alignment: .trailing){
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Log In")
                                .font(.system(size: 14))
                                .font(.body)
                                .foregroundColor(Color("buttonBackground"))
                                .multilineTextAlignment(.center)
                        }.padding(.horizontal, 30.0)
                        .padding(.vertical, 10.0)
                        .foregroundColor(Color("buttonBackground"))
                        .border(Color("buttonBackground"), width: 1)
                        .cornerRadius(20)
                    }
                    
                }.frame(width: UIScreen.main.bounds.width * 1)
                
                Spacer().frame(height: UIScreen.main.bounds.height * 0.02)
                
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "message")
                    
                    Text("Connect with Facebook")
                        .font(.system(size: 14))
                        .font(.body)
                        .foregroundColor(Color("facebook"))
                        .multilineTextAlignment(.center)
                }.padding(.horizontal, 30.0)
                .padding(.vertical, 10.0)
                .foregroundColor(Color("facebook"))
                .border(Color("facebook"), width: 1)
                .cornerRadius(15)
                
                Spacer().frame(height: UIScreen.main.bounds.height * 0.20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .previewDevice("iPhone 11 Pro")
            
            ContentView()
                .previewDevice("iPhone 8")
        }
        
    }
}
