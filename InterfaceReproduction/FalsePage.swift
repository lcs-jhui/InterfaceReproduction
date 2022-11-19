//
//  FalsePage.swift
//  InterfaceReproduction
//
//  Created by Justin Hui on 18/11/2022.
//

import SwiftUI

struct FalsePage: View {
    var body: some View {
        Text("Nothing to see here")
            .bold()
            .font(.largeTitle)
        Image(systemName: "face.smiling.inverse")
            .font(.largeTitle)
    }
}

struct FalsePage_Previews: PreviewProvider {
    static var previews: some View {
        FalsePage()
    }
}
