//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Anthony Lister on 18/05/22.
//

import SwiftUI

struct myStackViews: View {
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.35, blue: 0)
            
            VStack (spacing: 20) {
                
                HStack (spacing: 50) {
                    Text("1")
                    Text("2")
                    Text("3")
                }
                .font(.system(size: 120))
                
                HStack (spacing: 50) {
                    Text("4").foregroundColor(Color.white)
                    Text("5")
                    Text("6")
                }
                .font(.system(size: 120))
                
                HStack (spacing: 50) {
                    Text("7")
                    Text("8")
                    Text("9")
                }
                .font(.system(size: 120))
                .foregroundColor(Color.gray)
            }
        }
        .ignoresSafeArea()
        .foregroundColor(Color.blue)
    }
}

struct myStackViews_Previews: PreviewProvider {
    static var previews: some View {
        myStackViews()
    }
}
