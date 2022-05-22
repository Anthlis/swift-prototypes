//
//  RedOneView.swift
//  SeanAllen-tabView
//
//  Created by Anthony Lister on 17/05/22.
//

import SwiftUI

struct BlueTwoView: View {
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            Text("\(2)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct BlueTwoView_Previews: PreviewProvider {
    static var previews: some View {
        BlueTwoView()
    }
}
