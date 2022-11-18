//
//  ListView.swift
//  InterfaceReproduction
//
//  Created by Justin Hui on 18/11/2022.
//

import SwiftUI

struct ListView: View {
    
    //MARK: Stored Properties
    var symbol1: String
    var text: String
    var symbol2: String
    
    //MARK: Computed Properties
    var body: some View {
        
        HStack{
            Image(systemName: symbol1)
                .font(.largeTitle)
                .symbolRenderingMode(.multicolor)
                .foregroundColor(.red)
             Text(text)
                .font(.title3)
            Image(systemName: symbol2)
                .font(.title3)
                .foregroundColor(.gray)
                .padding(.leading, 120)
                .bold()
        }.bold()
    }
}




struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(symbol1: "bell.badge.circle.fill", text: "Notifications", symbol2: "chevron.forward")
            .preferredColorScheme(.dark)
    }
}
