//
//  ContentView.swift
//  SeanAllen-tabView
//
//  Created by Anthony Lister on 17/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RedOneView()
                .tabItem {
                    Image(systemName: "paperplane")
                    Text("Flying")
                }
            BlueTwoView()
                .tabItem {
                    Image(systemName: "bicycle")
                    Text("Ride")
                }
            GreenThreeView()
                .tabItem {
                    Image(systemName: "wrench")
                    Text("Workshop")
                }
            OrangeFourView()
                .tabItem {
                    Image(systemName: "tornado")
                    Text("Go faster!")
                }
        }
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}

