//
//  RedOneView.swift
//  SeanAllen-tabView
//
//  Created by Anthony Lister on 17/05/22.
//

import SwiftUI

struct OrangeFourView: View {
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.orange)
            Text("\(4)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct OrangeFourView_Previews: PreviewProvider {
    static var previews: some View {
        OrangeFourView()
    }
}

