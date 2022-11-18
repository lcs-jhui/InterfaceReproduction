//
//  ContentView.swift
//  InterfaceReproduction
//
//  Created by Justin Hui on 17/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                
                VStack(spacing: 20){
                    Divider()
                    
                    HStack(spacing: 250){
                        Text("My Faces")
                            .font(.title2)
                        
                        Text("Edit")
                            .font(.title3)
                            .foregroundColor(.orange)
                    }
                    
                    VStack{
                        Image("WatchFace")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                        
                        Text("Infograph")

                        
                    }.padding(.trailing, 230)
                    
                }
                
                List{
                        ListView(symbol1: "bell.badge.circle.fill", text: "Notifications", symbol2: "chevron.forward")
                    }
        
                
            }
            .navigationTitle("Russell's Apple Watch")
            .bold()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Text("All Watches").font(.title3).foregroundColor(.orange)
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        .preferredColorScheme(.dark)
    }
}
