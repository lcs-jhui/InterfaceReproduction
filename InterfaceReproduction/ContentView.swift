//
//  ContentView.swift
//  InterfaceReproduction
//
//  Created by Justin Hui on 17/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            
            
            VStack{
                
                
                VStack(spacing: 20){
                    
                    Divider()
                    
                    //Hstack for the row of texts
                    HStack(spacing: 230){
                        Text("My Faces")
                            .font(.title2)
                        
                        Text("Edit")
                            .font(.title3)
                            .foregroundColor(.orange)
                    }
                    
                    //Vstack for the watch face and the description of watch face
                    VStack{
                        Image("WatchFace")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                        
                        Text("Infograph")
                        
                        
                    }.padding(.trailing, 230)
                    
                    Group{
                        
                        //List #1
                        List{
                            
                            //Using the helper view to add individual list description
                            NavigationLink(destination: {
                                FalsePage()
                            }, label: {
                                ListView(symbol1: "bell.badge.circle.fill", text: "Notifications", color: .red)
                            })
                            
                            NavigationLink(destination: {
                                FalsePage()
                            }, label: {
                                ListView(symbol1: "circle.hexagongrid.circle.fill", text: "App View", color: .blue)
                            })
                            
                            NavigationLink(destination: {
                                FalsePage()
                            }, label: {
                                ListView(symbol1: "rectangle.on.rectangle.circle.fill", text: "Dock", color: .blue)
                            })
                        }.frame(height: 200)
                        
                        //List #2
                        List{
                            NavigationLink(destination: {
                                FalsePage()
                            }, label: {
                                ListView(symbol1: "gear.circle.fill", text: "Settings", color: .red)
                            })
                            
                            NavigationLink(destination: {
                                FalsePage()
                            }, label: {
                                ListView(symbol1: "antenna.radiowaves.left.and.right.circle.fill", text: "Cellular", color: .green)
                            })
                            
                            NavigationLink(destination: {
                                FalsePage()
                            }, label: {
                                ListView(symbol1: "square.and.arrow.up.circle.fill", text: "Dock", color: .blue)
                            })
                        }.frame(height: 120)
                    }
                }
                
                
                
                
                
            }
            //Navigation title on top of the page
            .navigationTitle("Russell's Apple Watch")
            .bold()
            //Toolbar that adds the text All Watches
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
        TabView (selection: Binding.constant(1)){
            
            ContentView()
                .tabItem{
                    Image(systemName: "applewatch.side.right")
                        .symbolRenderingMode(.monochrome)
                    Text("My Watch")
                }
                .tag(1)
            
            Text("Face Gallery")
                .tabItem{
                    Image(systemName: "applewatch.watchface")
                    Text("Face Gallery")
                }
                .tag(2)
            
            Text("Discover")
                .tabItem{
                    Image(systemName: "safari.fill")
                    Text("Discover")
                }
                .tag(3)
            
        }
        .accentColor(.orange)
        .preferredColorScheme(.dark)
    }
}

