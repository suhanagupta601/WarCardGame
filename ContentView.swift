//
//  ContentView.swift
//  WarCardGame
//
//  Created by Suhana Gupta on 12/31/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .padding()
                    //.frame(maxHeight: .infinity, alignment: .top)
                    
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                .padding(35)

                
                Image("button")
                
                
                
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                        Text("0")
                            .font(.largeTitle)
                            .padding(5)

                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                        Text("0")
                            .font(.largeTitle)
                            .padding(5)

                    }
                    Spacer()
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding(20)
                
            }
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
