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
            
            ScrollView{
                
                
                VStack(spacing: 20){
                    Divider()
                    
                    HStack(spacing: 250){
                        Text("My Faces")
                            .font(.title2)
                        
                        Text("Edit")
                            .font(.title3)
                            .foregroundColor(.orange)
                    }
                    Image("WatchFace")
                        .resizable()
                        .scaledToFill()
                        frame(width: 50,height: 50)
                    
                    
                    
                }
                
                
                
                
                
                
            }
            .navigationTitle("Russell's Apple Watch").bold()
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
