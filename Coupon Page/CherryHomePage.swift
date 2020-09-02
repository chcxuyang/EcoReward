//
//  CherryHomePage.swift
//  Cherry_Pro_Max
//
//  Created by chenchen on 9/2/20.
//  Copyright © 2020 chenchen. All rights reserved.
//

import SwiftUI

struct CherryHomePage: View {
    var body: some View {
        
        Image(uiImage: UIImage(named:"background.png")!)
            .resizable()
            .scaledToFill()
            .frame(width:400, height: 30)
            .overlay(
                Text("Home")
                    .font(Font.system(size:25))
                    .foregroundColor(Color.white)
                    .frame(width: 50, height:30)
        )
        

    }
}

struct CherryHomePage_Previews: PreviewProvider {
    static var previews: some View {
        CherryHomePage()
    }
}
