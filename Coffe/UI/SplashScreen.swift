//
//  SplashScreen.swift
//  Coffe
//
//  Created by Ceren TAŞSIN on 14.11.2020.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive:Bool = false
        
        var body: some View {
            GeometryReader { geometry in
                VStack {
                    
                    if self.isActive {
                        
                        ContentView()
                        
                    } else {
                        
                        Image("Splash")
                            .resizable()
                            .aspectRatio(geometry.size, contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                        
                    }
                }
                
                .onAppear {
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
